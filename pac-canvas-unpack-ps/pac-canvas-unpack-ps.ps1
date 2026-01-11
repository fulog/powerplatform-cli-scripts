$ErrorActionPreference = 'Stop'

# Check if 'pac' command is available
$pac = Get-Command pac -ErrorAction SilentlyContinue
if (-not $pac) {
	throw "'pac' command not found. Install Power Platform CLI and ensure it is on PATH."
}

# Find the .msapp file in the current script directory
$msapp = Get-ChildItem -LiteralPath $PSScriptRoot -Filter '*.msapp' -File | Select-Object -First 1
if (-not $msapp) {
	throw "No .msapp file found in: $PSScriptRoot"
}

# Define output sources folder
$sources = Join-Path $PSScriptRoot 'sample_app_src'

& pac canvas unpack --msapp $msapp.FullName --sources $sources