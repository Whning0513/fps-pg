$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot

$port = 8000
$python = Get-Command py, python -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $python) {
    throw 'Python 3 is required. Install it, then run this script again.'
}

$listener = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
if ($listener) {
    throw "Port $port is already in use. Stop that server or change `$port in run.ps1."
}

Write-Host "Serving Low Tide Signal at http://127.0.0.1:$port/"
Write-Host 'Press Ctrl+C to stop the server.'
if ($python.Name -eq 'py.exe' -or $python.Name -eq 'py') {
    & $python.Source -3 -m http.server $port --bind 127.0.0.1
} else {
    & $python.Source -m http.server $port --bind 127.0.0.1
}
