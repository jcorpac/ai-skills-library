param(
    [Parameter(Mandatory = $false)]
    [string]$Category,
    
    [Parameter(Mandatory = $false)]
    [string]$Name
)

# Valid Categories
$validCategories = @("api", "doc", "ds", "flask", "git", "mcp", "meta", "ml", "ops", "py", "rs", "tdd", "ui")

if (-not $Category) {
    Write-Host "Available Categories: $($validCategories -join ', ')" -ForegroundColor Cyan
    $Category = Read-Host "Select Category"
}

if ($validCategories -notcontains $Category) {
    Write-Error "Invalid category. Please choose from: $($validCategories -join ', ')"
    exit 1
}

if (-not $Name) {
    $Name = Read-Host "Enter Skill Name (kebab-case, e.g., stripe-integration)"
}

$folderPath = "$Category/$Category-$Name"
$fullPath = Join-Path (Get-Location) $folderPath

if (Test-Path $fullPath) {
    Write-Error "Skill folder already exists at $folderPath"
    exit 1
}

# Create Structure
Write-Host "Creating scaffold for $Name in $Category..." -ForegroundColor Green
New-Item -ItemType Directory -Path (Join-Path $fullPath "scripts") -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $fullPath "examples") -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $fullPath "resources") -Force | Out-Null

# Create SKILL.md
$skillContent = @"
---
name: $Name
description: Enter a concise description here.
---

# $Name

## Purpose
Describe the purpose of this skill.

## Usage
Explain how to use this skill.

## Resources
List any associated scripts or resources.
"@

$skillContent | Out-File (Join-Path $fullPath "SKILL.md") -Encoding utf8

Write-Host "`nSuccessfully scaffolded skill at: $folderPath" -ForegroundColor Green
Write-Host "`nNEXT STEPS:" -ForegroundColor Yellow
Write-Host "1. Edit $folderPath/SKILL.md to add content."
Write-Host "2. Add the following line to the root README.md under the '$Category' section:"
Write-Host "   - **[$Category-$Name](./$folderPath)**: Enter description here."
Write-Host "3. Run 'generate_metadata.ps1' (or similar) to refresh category manifests."
