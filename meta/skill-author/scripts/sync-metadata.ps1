# AI Skills Library - Metadata Generator
# Consolidates README metadata into category-specific manifests and READMEs

$readmePath = Join-Path $PSScriptRoot "README.md"
if (-not (Test-Path $readmePath)) {
    Write-Error "README.md not found at expected path: $readmePath"
    exit 1
}

$readmeContent = Get-Content $readmePath -Raw

# Category definitions: Single source of truth for names and descriptions
$categoryMeta = @{
    'api'   = @{ name = 'Modern Ecosystem Expansion (FastAPI)'; desc = 'Type-safe, high-performance API development with Modern Python.' }
    'doc'   = @{ name = 'Documentation Suite'; desc = 'Establish clear communication and maintainable technical lore.' }
    'ds'    = @{ name = 'Data Science Suite'; desc = 'Specialized patterns for the full data science lifecycle, featuring Polars and EDA.' }
    'flask' = @{ name = 'Full-Stack Flask Mastery'; desc = 'Mastering production-grade web development with Flask.' }
    'git'   = @{ name = 'Git Mastery Suite'; desc = 'Professional version control and repository management.' }
    'mcp'   = @{ name = 'MCP Architecture & Development'; desc = 'Professional engineering for the Model Context Protocol.' }
    'meta'  = @{ name = 'Meta-Skill & Orchestration'; desc = 'Advanced strategies for managing large skill ecosystems and context.' }
    'ml'    = @{ name = 'Machine Learning & MLOps'; desc = 'Comprehensive methodologies for the ML lifecycle.' }
    'ops'   = @{ name = 'Infrastructure & Container Mastery'; desc = 'Production-grade containerization, CI/CD, and orchestration.' }
    'py'    = @{ name = 'Language Excellence (Python)'; desc = 'Advanced patterns for performance and scalability in Python.' }
    'rs'    = @{ name = 'Language Excellence (Rust)'; desc = 'Systems programming with safety and high performance.' }
    'tdd'   = @{ name = 'Test-Driven Development (TDD) Suite'; desc = 'Comprehensive tools for maintaining high code quality through rigorous testing.' }
    'ui'    = @{ name = 'UI/UX & Presentation Layer'; desc = 'Premium frontend development and dynamic rendering without frameworks.' }
}

# Regex to find skill links: - **[name](./path)**: description
$linkRegex = '- \*\*\[(?<name>.*?)\]\(\.\/(?<path>.*?)\)\*\*: (?<desc>.*)'

$linkMatches = [regex]::Matches($readmeContent, $linkRegex)
$allSkills = @()

Write-Host "Found $($linkMatches.Count) skill links in root README." -ForegroundColor Gray

foreach ($m in $linkMatches) {
    $pathValue = $m.Groups['path'].Value
    $pathParts = $pathValue.Split('/')
    
    # We expect paths like "category/skill-name"
    if ($pathParts.Length -eq 2) {
        $allSkills += [PSCustomObject]@{
            category = $pathParts[0]
            id       = $pathParts[1]
            name     = $m.Groups['name'].Value
            path     = "./$($pathParts[1])"
            desc     = $m.Groups['desc'].Value.Trim()
        }
    }
}

foreach ($cat in $categoryMeta.Keys.GetEnumerator() | Sort-Object) {
    $meta = $categoryMeta[$cat]
    $skills = $allSkills | Where-Object { $_.category -eq $cat }
    
    if ($null -eq $skills -or @($skills).Count -eq 0) {
        continue
    }

    $targetDir = Join-Path $PSScriptRoot $cat
    if (-not (Test-Path $targetDir)) {
        Write-Warning "Category directory not found: $targetDir. Skipping."
        continue
    }

    # 1. Generate SKILLS_MANIFEST.json
    $manifest = @{
        category    = $meta.name
        description = $meta.desc
        skills      = @($skills | ForEach-Object {
                @{
                    id          = $_.id
                    name        = $_.name
                    description = $_.desc
                    path        = $_.path
                }
            })
    }
    $manifest | ConvertTo-Json -Depth 5 | Out-File (Join-Path $targetDir "SKILLS_MANIFEST.json") -Encoding utf8

    # 2. Generate Category README.md
    $catReadme = @"
# $($meta.name)

$($meta.desc)

## Skills in this Category
"@
    foreach ($s in $skills) {
        $catReadme += "`n- **[$($s.name)]($($s.path))**: $($s.desc)"
    }
    $catReadme | Out-File (Join-Path $targetDir "README.md") -Encoding utf8
    
    Write-Host "Synced metadata for $cat ($(@($skills).Count) skills)" -ForegroundColor Green
}

Write-Host "`nMetadata synchronization complete." -ForegroundColor Cyan
$readmePath = "c:\Users\jcorp\Local Projects\skills\README.md"
$content = Get-Content $readmePath -Raw

# Category titles and descriptions from the implementation plan
$categoryMeta = @{
    'api'   = @{ name = 'Modern Ecosystem Expansion (FastAPI)'; desc = 'Type-safe, high-performance API development with Modern Python.' }
    'doc'   = @{ name = 'Documentation Suite'; desc = 'Establish clear communication and maintainable technical lore.' }
    'ds'    = @{ name = 'Data Science Suite'; desc = 'Specialized patterns for the full data science lifecycle, featuring Polars and EDA.' }
    'flask' = @{ name = 'Full-Stack Flask Mastery'; desc = 'Mastering production-grade web development with Flask.' }
    'git'   = @{ name = 'Git Mastery Suite'; desc = 'Professional version control and repository management.' }
    'mcp'   = @{ name = 'MCP Architecture & Development'; desc = 'Professional engineering for the Model Context Protocol.' }
    'meta'  = @{ name = 'Meta-Skill & Orchestration'; desc = 'Advanced strategies for managing large skill ecosystems and context.' }
    'ml'    = @{ name = 'Machine Learning & MLOps'; desc = 'Comprehensive methodologies for the ML lifecycle.' }
    'ops'   = @{ name = 'Infrastructure & Container Mastery'; desc = 'Production-grade containerization, CI/CD, and orchestration.' }
    'py'    = @{ name = 'Language Excellence (Python)'; desc = 'Advanced patterns for performance and scalability in Python.' }
    'rs'    = @{ name = 'Language Excellence (Rust)'; desc = 'Systems programming with safety and high performance.' }
    'tdd'   = @{ name = 'Test-Driven Development (TDD) Suite'; desc = 'Comprehensive tools for maintaining high code quality through rigorous testing.' }
    'ui'    = @{ name = 'UI/UX & Presentation Layer'; desc = 'Premium frontend development and dynamic rendering without frameworks.' }
}

# Regex to find links: - **[name](./path)**: description
$linkRegex = '- \*\*\[(?<name>.*?)\]\(\.\/(?<path>.*?)\)\*\*: (?<desc>.*)'

$matches = [regex]::Matches($content, $linkRegex)
$allSkills = @()

foreach ($m in $matches) {
    $pathParts = $m.Groups['path'].Value.Split('/')
    if ($pathParts.Length -eq 2) {
        $cat = $pathParts[0]
        $folder = $pathParts[1]
        $allSkills += [PSCustomObject]@{
            category = $cat
            name     = $m.Groups['name'].Value
            path     = "./$folder"
            id       = $folder
            desc     = $m.Groups['desc'].Value.Trim()
        }
    }
}

foreach ($cat in $categoryMeta.Keys) {
    $meta = $categoryMeta[$cat]
    $skills = $allSkills | Where-Object { $_.category -eq $cat }
    
    if ($skills.Count -eq 0) { continue }

    $targetDir = "c:\Users\jcorp\Local Projects\skills\$cat"
    if (-not (Test-Path $targetDir)) { continue }

    # Generate JSON
    $manifest = @{
        category    = $meta.name
        description = $meta.desc
        skills      = @($skills | ForEach-Object {
                @{
                    id          = $_.id
                    name        = $_.name
                    description = $_.desc
                    path        = $_.path
                }
            })
    }
    $manifest | ConvertTo-Json -Depth 5 | Out-File "$targetDir\SKILLS_MANIFEST.json" -Encoding utf8

    # Generate README
    $readme = @"
# $($meta.name)

$($meta.desc)

## Skills in this Category
"@
    foreach ($s in $skills) {
        $readme += "`n- **[$($s.name)]($($s.path))**: $($s.desc)"
    }
    $readme | Out-File "$targetDir\README.md" -Encoding utf8
    
    $skillCount = @($skills).Count
    Write-Host "Generated metadata for $cat ($skillCount skills)"
}
