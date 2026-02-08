<#
.SYNOPSIS
    Installs/Links skills from the AI Skills Library to Gemini CLI discovery path.

.DESCRIPTION
    This script iterates through all category folders in the skills library and creates
    symbolic links in the user's Gemini skills directory (~/.gemini/skills).
    This allows `gemini-cli` to automatically discover and use the skills.

.EXAMPLE
    .\install_skills.ps1
#>

$ErrorActionPreference = "Stop"

$RepoRoot = Get-Item $PSScriptRoot
$DestDir = Join-Path $HOME ".gemini\skills"

Write-Host "--- AI Skills Library Installer ---" -ForegroundColor Cyan
Write-Host "Source: $($RepoRoot.FullName)"
Write-Host "Destination: $DestDir"
Write-Host ""

# 1. Ensure destination exists
if (!(Test-Path $DestDir)) {
    Write-Host "[+] Creating destination directory..."
    New-Item -ItemType Directory -Path $DestDir | Out-Null
}

# 2. Identify skills (folders containing SKILL.md)
$SkillFolders = Get-ChildItem -Path $RepoRoot.FullName -Recurse -Filter "SKILL.md" | ForEach-Object { $_.Directory }

Write-Host "[*] Found $($SkillFolders.Count) skills."

# 3. Create Links
$SuccessCount = 0
$SkipCount = 0

foreach ($Folder in $SkillFolders) {
    # Skip meta folders or templates if necessary (currently everything with SKILL.md is a skill)
    if ($Folder.Name -eq "template-skill") { continue }

    $LinkName = $Folder.Name
    $TargetPath = $Folder.FullName
    $DestPath = Join-Path $DestDir $LinkName

    if (Test-Path $DestPath) {
        Write-Host "[-] Skipping '$LinkName' (Already exists at destination)" -ForegroundColor Yellow
        $SkipCount++
        continue
    }

    try {
        # Check permissions for symlinks (usually requires admin, falling back to junction/copy if needed)
        # On Windows, New-Item -ItemType SymbolicLink often requires elevation.
        # Junctions do not require elevation and work for directories.
        New-Item -ItemType Junction -Path $DestPath -Target $TargetPath | Out-Null
        Write-Host "[+] Linked: $LinkName" -ForegroundColor Green
        $SuccessCount++
    }
    catch {
        Write-Error "Failed to link '$LinkName': $($_.Exception.Message)"
    }
}

Write-Host ""
Write-Host "--- Installation Complete ---" -ForegroundColor Cyan
Write-Host "Total Linked: $SuccessCount"
Write-Host "Skipped:      $SkipCount"
Write-Host ""
Write-Host "To finish, run 'gemini skills list --all' to verify registration." -ForegroundColor DarkCyan
