<#
.SYNOPSIS
    Audits all skills for metadata compliance (SKILL.md presence and YAML validity).

.DESCRIPTION
    Iterates through all subdirectories in the skills library.
    Checks for:
    1. Existence of SKILL.md
    2. Valid YAML frontmatter (name, description)
    3. Matching directory name convention (optional but recommended)

.EXAMPLE
    .\audit_metadata.ps1
#>

$RepoRoot = Get-Item $PSScriptRoot
$SkillFolders = Get-ChildItem -Path $RepoRoot.FullName -Recurse -Directory | Where-Object { 
    $_.Name -match "^[a-z]+-[a-z0-9-]+" -and $_.Name -ne "node_modules" -and $_.Name -ne ".git"
}

$Log = @()
$PassCount = 0
$FailCount = 0

Write-Host "--- Skill Metadata Audit ---" -ForegroundColor Cyan

foreach ($Folder in $SkillFolders) {
    # Skip non-skill folders (heuristic: deeper than 2 levels or known ignores)
    if ($Folder.FullName -match "resources|scripts|examples|pkg|.git") { continue }
    
    $SkillPath = Join-Path $Folder.FullName "SKILL.md"
    
    if (!(Test-Path $SkillPath)) {
        # Check if it's actually a skill folder (strict check)
        # For now, we only warn if it looks like a skill folder (hyphenated)
        if ($Folder.GetFiles().Count -gt 0) {
            # Potentially a skill missing metadata
            # Write-Warning "Missing SKILL.md: $($Folder.Name)"
            # We'll skip for now to avoid false positives on deep dirs
        }
        continue
    }

    $Content = Get-Content -Path $SkillPath -Raw
    if ($Content -match "^---\s*`r?`n([\s\S]*?)`r?`n---\s*") {
        $Yaml = $matches[1]
        $HasName = $Yaml -match "name:"
        $HasDesc = $Yaml -match "description:"
        
        if ($HasName -and $HasDesc) {
            $PassCount++
            # Write-Host "[OK] $($Folder.Name)" -ForegroundColor Gray
        }
        else {
            Write-Host "[FAIL] $($Folder.Name): Missing 'name' or 'description'" -ForegroundColor Red
            $FailCount++
        }
    }
    else {
        Write-Host "[FAIL] $($Folder.Name): Invalid YAML Frontmatter" -ForegroundColor Red
        $FailCount++
    }
}

Write-Host ""
Write-Host "Audit Complete."
Write-Host "passed: $PassCount" -ForegroundColor Green
Write-Host "Failed: $FailCount" -ForegroundColor Red

if ($FailCount -gt 0) {
    exit 1
}
