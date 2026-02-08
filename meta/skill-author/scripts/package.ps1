param(
    [Parameter(Mandatory = $true)]
    [string]$SkillPath,

    [Parameter(Mandatory = $false)]
    [string]$OutputDir = "pkg"
)

$skillFolder = Get-Item $SkillPath
$skillName = $skillFolder.Name

if (-not (Test-Path (Join-Path $skillFolder.FullName "SKILL.md"))) {
    Write-Error "SKILL.md not found in $SkillPath"
    exit 1
}

# Ensure OutputDir exists
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
}

$zipPath = Join-Path $OutputDir "$skillName.zip"
$skillPackagePath = Join-Path $OutputDir "$skillName.skill"

Write-Host "Packaging skill '$skillName'..." -ForegroundColor Cyan

# Remove existing if any
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
if (Test-Path $skillPackagePath) { Remove-Item $skillPackagePath -Force }

# Create Zip
Compress-Archive -Path "$($skillFolder.FullName)\*" -DestinationPath $zipPath -Force

# Rename to .skill
Rename-Item -Path $zipPath -NewName "$skillName.skill"

Write-Host "Successfully created package: $skillPackagePath" -ForegroundColor Green
