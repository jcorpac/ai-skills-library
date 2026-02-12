<#
.SYNOPSIS
    Synchronizes category manifests and READMEs with actual skill folders.

.DESCRIPTION
    Iterates through all category directories in the library.
    For each category:
    1. Scans for subdirectories containing a SKILL.md file.
    2. Updates (or creates) SKILLS_MANIFEST.json with the current list of skills.
    3. Updates the README.md to list these skills under "## Skills in this Category".

.EXAMPLE
    .\sync_manifests.ps1
#>

$ErrorActionPreference = "Stop"
$LibRoot = (Get-Item $PSScriptRoot).Parent.Parent.Parent # ../../.. from meta/skill-author/scripts/

Write-Host "--- Skill Library Synchronizer ---" -ForegroundColor Cyan
Write-Host "Library Root: $LibRoot"

# Get all potential category directories (exclude dotfiles, pkg, etc.)
$CategoryDirs = Get-ChildItem -Path $LibRoot -Directory | Where-Object { 
    $_.Name -notmatch "^\." -and $_.Name -ne "pkg" -and $_.Name -ne "node_modules" 
}

foreach ($CatDir in $CategoryDirs) {
    # Check if it looks like a category (has SKILLS_MANIFEST.json or README.md)
    $ManifestPath = Join-Path $CatDir.FullName "SKILLS_MANIFEST.json"
    $ReadmePath = Join-Path $CatDir.FullName "README.md"
    
    # Verify it has skills
    $Skills = Get-ChildItem -Path $CatDir.FullName -Directory | Where-Object {
        Test-Path (Join-Path $_.FullName "SKILL.md")
    }

    if ($Skills.Count -eq 0) {
        continue
    }

    Write-Host "`n[*] Processing Category: $($CatDir.Name)" -ForegroundColor Yellow

    # --- Update Manifest ---
    $ManifestData = @{
        category    = $CatDir.Name # Default name, will try to preserve existing
        description = "Collection of $($CatDir.Name) skills."
        skills      = @()
    }

    if (Test-Path $ManifestPath) {
        try {
            $Existing = Get-Content -Path $ManifestPath -Raw | ConvertFrom-Json
            if ($Existing.category) { $ManifestData.category = $Existing.category }
            if ($Existing.description) { $ManifestData.description = $Existing.description }
        }
        catch {
            Write-Warning "Could not parse existing manifest for $($CatDir.Name)"
        }
    }

    foreach ($Skill in $Skills) {
        $SkillReadmePath = Join-Path $Skill.FullName "SKILL.md"
        $SkillContent = Get-Content -Path $SkillReadmePath -Raw
        
        # Extract Name and Description from Frontmatter
        $Name = $Skill.Name
        $Desc = "No description available."
        
        if ($SkillContent -match "description:\s*(.+)") {
            $Desc = $matches[1].Trim()
        }

        $ManifestData.skills += @{
            id          = $Skill.Name
            name        = $Skill.Name
            path        = "./$($Skill.Name)"
            description = $Desc
        }
    }

    $ManifestData | ConvertTo-Json -Depth 4 | Set-Content -Path $ManifestPath
    Write-Host "    [+] Updated SKILLS_MANIFEST.json"

    # --- Update README ---
    if (Test-Path $ReadmePath) {
        $ReadmeContent = Get-Content -Path $ReadmePath -Raw
        
        # Split at "## Skills in this Category"
        if ($ReadmeContent -match "(?s)(.*## Skills in this Category\r?\n)") {
            $Header = $matches[1]
            $NewList = @()
            foreach ($Skill in $ManifestData.skills) {
                $NewList += "- **[$($Skill.name)]($($Skill.path))**: $($Skill.description)"
            }
            
            $NewContent = $Header + ($NewList -join "`n") + "`n"
            Set-Content -Path $ReadmePath -Value $NewContent
            Write-Host "    [+] Updated README.md"
        }
        else {
            Write-Warning "    [!] README.md structure not recognized (missing '## Skills in this Category'). Skipping."
        }
    }
    else {
        Write-Warning "    [!] README.md not found in $($CatDir.Name)"
    }
}

Write-Host "`n[+] Synchronization Complete!" -ForegroundColor Green
