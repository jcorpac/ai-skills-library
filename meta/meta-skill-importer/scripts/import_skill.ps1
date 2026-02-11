<#
.SYNOPSIS
    Imports a specific skill folder from a remote Git repository.

.DESCRIPTION
    Clones the specified repository to a temporary location, extracts the target skill
    directory, moves it to the local library, and cleans up the temporary files.

.PARAMETER RepoUrl
    The web URL of the Git repository (e.g., https://github.com/google-gemini/gemini-skills).

.PARAMETER SkillPath
    The relative path to the skill folder within the remote repo (e.g., skills/gemini-api-dev).

.PARAMETER DestCategory
    The local category to place the skill into (e.g., api, meta, ops).

.EXAMPLE
    .\import_skill.ps1 -RepoUrl "https://github.com/google-gemini/gemini-skills" -SkillPath "skills/gemini-api-dev" -DestCategory "api"
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$RepoUrl,

    [Parameter(Mandatory = $true)]
    [string]$SkillPath,

    [Parameter(Mandatory = $true)]
    [string]$DestCategory
)

$ErrorActionPreference = "Stop"
$RepoName = $RepoUrl.Split("/")[-1].Replace(".git", "")
$TempDir = Join-Path $PSScriptRoot "temp_import_$RepoName"
$LibRoot = (Get-Item $PSScriptRoot).Parent.Parent.Parent # ../../.. from scripts/
$DestRoot = Join-Path $LibRoot $DestCategory

Write-Host "--- AI Skill Importer ---" -ForegroundColor Cyan
Write-Host "Source Repo: $RepoUrl"
Write-Host "Target Skill: $SkillPath"
Write-Host "Destination: $DestRoot"

# 1. Clone to temp
if (Test-Path $TempDir) { Remove-Item $TempDir -Recurse -Force }
Write-Host "`n[*] Cloning repository..."
git clone $RepoUrl $TempDir --depth 1 --quiet

if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to clone repository."
}

# 2. Verify source skill exists
$SourcePath = Join-Path $TempDir $SkillPath
if (!(Test-Path $SourcePath)) {
    Remove-Item $TempDir -Recurse -Force
    Write-Error "Skill path '$SkillPath' not found in repository."
}

# 3. Move to destination
$SkillName = Split-Path $SourcePath -Leaf
$FinalDest = Join-Path $DestRoot $SkillName

if (Test-Path $FinalDest) {
    Remove-Item $TempDir -Recurse -Force
    Write-Error "Destination '$FinalDest' already exists."
}

Write-Host "[*] Importing '$SkillName'..."
Move-Item -Path $SourcePath -Destination $DestRoot

# 4. Cleanup
Write-Host "[*] Cleaning up..."
Remove-Item $TempDir -Recurse -Force

Write-Host "`n[+] Import Complete!" -ForegroundColor Green
Write-Host "Location: $FinalDest"
Write-Host "`nNEXT STEPS:" -ForegroundColor Yellow
Write-Host "1. Update root README.md with:"
Write-Host "   - **[$SkillName](./$DestCategory/$SkillName)**: *Imported from [$RepoName]($RepoUrl)* - Description..."
Write-Host "2. Run 'install_skills.ps1' to link to CLI."
