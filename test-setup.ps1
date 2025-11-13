# Test script to verify Cursor setup
Write-Host "Testing Cursor Setup Installation..." -ForegroundColor Cyan
Write-Host ""

$testsPassed = 0
$testsFailed = 0

# Test 1: Check if Git is installed
Write-Host "Test 1: Checking Git installation..." -NoNewline
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host " PASSED" -ForegroundColor Green
    git --version
    $testsPassed++
} else {
    Write-Host " FAILED" -ForegroundColor Red
    Write-Host "  Git is not installed or not in PATH"
    $testsFailed++
}

# Test 2: Check if Cursor is installed
Write-Host "`nTest 2: Checking Cursor installation..." -NoNewline
$cursorPath = "$env:LOCALAPPDATA\Programs\cursor\Cursor.exe"
if (Test-Path $cursorPath) {
    Write-Host " PASSED" -ForegroundColor Green
    Write-Host "  Cursor found at: $cursorPath"
    $testsPassed++
} else {
    Write-Host " FAILED" -ForegroundColor Red
    Write-Host "  Cursor not found at expected location"
    $testsFailed++
}

# Test 3: Check .cursor folder structure
Write-Host "`nTest 3: Checking .cursor folder structure..." -NoNewline
$foldersToCheck = @(".cursor", ".cursor\rules", ".cursor\tools", ".cursor\docs", ".cursor\notes")
$allFoldersExist = $true
foreach ($folder in $foldersToCheck) {
    if (-not (Test-Path $folder)) {
        $allFoldersExist = $false
        break
    }
}
if ($allFoldersExist) {
    Write-Host " PASSED" -ForegroundColor Green
    Write-Host "  All required folders exist"
    $testsPassed++
} else {
    Write-Host " FAILED" -ForegroundColor Red
    Write-Host "  Missing required folders"
    $testsFailed++
}

# Test 4: Check for Node.js (for MCP)
Write-Host "`nTest 4: Checking Node.js installation..." -NoNewline
if (Get-Command node -ErrorAction SilentlyContinue) {
    Write-Host " PASSED" -ForegroundColor Green
    node --version
    $testsPassed++
} else {
    Write-Host " WARNING" -ForegroundColor Yellow
    Write-Host "  Node.js not installed (required for MCP servers)"
}

# Summary
Write-Host "`n================================" -ForegroundColor Cyan
Write-Host "Test Summary" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host "Tests Passed: $testsPassed" -ForegroundColor Green
Write-Host "Tests Failed: $testsFailed" -ForegroundColor $(if ($testsFailed -eq 0) { "Green" } else { "Red" })

if ($testsFailed -eq 0) {
    Write-Host "`nAll tests passed! Setup is complete." -ForegroundColor Green
} else {
    Write-Host "`nSome tests failed. Please run SETUP.bat to complete installation." -ForegroundColor Yellow
}
