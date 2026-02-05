$readmePath = Join-Path (Get-Location) "README.md"
if (-not (Test-Path $readmePath)) {
    Write-Error "README.md not found in current directory."
    exit 1
}

$content = Get-Content $readmePath -Raw

# Category titles and descriptions
$categoryMeta = @{
    'api'   = @{ name = 'Modern Ecosystem Expansion (FastAPI)'; desc = 'Type-safe, high-performance API development with Modern Python.' }
    'doc'   = @{ name = 'Documentation Suite'; desc = 'Standards for clear, maintainable, and agent-friendly documentation.' }
    'ds'    = @{ name = 'Data Science Suite & Polars Performance'; desc = 'High-performance data processing and analysis.' }
    'flask' = @{ name = 'Full-Stack Flask Mastery'; desc = 'Building robust web applications with the Flask ecosystem.' }
    'git'   = @{ name = 'Git Mastery Suite'; desc = 'Advanced version control workflows and repository management.' }
    'mcp'   = @{ name = 'MCP Architecture & Development'; desc = 'Integrating and building with the Model Context Protocol.' }
    'meta'  = @{ name = 'Meta-Skill & Orchestration'; desc = 'Advanced strategies for managing large skill ecosystems and context.' }
    'ml'    = @{ name = 'Machine Learning, MLOps, & Streamlit'; desc = 'Deploying and managing ML models and interactive apps.' }
    'ops'   = @{ name = 'Docker, Container Mastery, & CI/CD'; desc = 'DevOps excellence and automation.' }
    'py'    = @{ name = 'Language Excellence (Python)'; desc = 'Mastering the core of Modern Python.' }
    'rs'    = @{ name = 'Language Excellence (Rust)'; desc = 'System-level performance and safety with Rust.' }
    'tdd'   = @{ name = 'Test-Driven Development (TDD) Suite'; desc = 'Ensuring quality through testing-first methodologies.' }
    'ui'    = @{ name = 'UI/UX, Presentation, & Portfolio Theming'; desc = 'Premium design and presentation for AI projects.' }
}

# Regex to find links: - **[name](./path)**: description
$linkRegex = '- \*\*\[(?<name>.*?)\]\(\.\/(?<path>.*?)\)\*\*: (?<desc>.*)'

$foundMatches = [regex]::Matches($content, $linkRegex)
$allSkills = @()

Write-Host "Found $($foundMatches.Count) potential skill matches." -ForegroundColor Gray

foreach ($m in $foundMatches) {
    $pathValue = $m.Groups['path'].Value
    $pathParts = $pathValue.Split('/')
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
    else {
        Write-Host "Skipping invalid path: $pathValue" -ForegroundColor Yellow
    }
}

foreach ($cat in $categoryMeta.Keys) {
    $meta = $categoryMeta[$cat]
    $skills = $allSkills | Where-Object { $_.category -eq $cat }
    
    $targetDir = Join-Path (Get-Location) $cat
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
    $catReadme = @"
# $($meta.name)

$($meta.desc)

## Skills in this Category
"@
    foreach ($s in $skills) {
        $catReadme += "`n- **[$($s.name)]($($s.path))**: $($s.desc)"
    }
    $catReadme | Out-File "$targetDir\README.md" -Encoding utf8
    
    $skillCount = @($skills).Count
    Write-Host "Synced metadata for $cat ($skillCount skills)"
}
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
