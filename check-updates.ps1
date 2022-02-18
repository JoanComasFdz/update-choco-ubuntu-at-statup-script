Write-Host "        Joan Comas 2022"
Write-Host "Looking for package updates in Windows..."
Write-Host

choco outdated

Write-Host
Write-Host -NoNewline "Update all windows packages? "
Write-Host -NoNewline "[Y] Yes" -Foreground green
Write-Host -NoNewline " [n] No: "
$updateWindowsPackages = Read-Host
$updateWindowsPackages = $updateWindowsPackages.ToLower()

if ($updateWindowsPackages -eq "y") {
    choco upgrade all
}

Write-Host
Write-Host "Looking for package updates in Ubuntu..."
Write-Host
wsl apt list --upgradeable

Write-Host
Write-Host -NoNewline "Update all Ubuntu packages (requires password)? "
Write-Host -NoNewline "[Y] Yes" -Foreground green
Write-Host -NoNewline " [n] No: "
$updateUbuntuPackages = Read-Host
$updateUbuntuPackages = $updateUbuntuPackages.ToLower()
if ($updateUbuntuPackages -eq "y") {
    wsl sh -c "sudo apt-get update && sudo apt-get upgrade"
}

Write-Host
Write-Host
Write-Host
Write-Host "You can check for updates by runnging this script from the Desktop."
Write-Host -NoNewline "Press any key to close..."
Read-Host