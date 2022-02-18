# update-choco-ubuntu-at-statup-script
This repo contains the necessary scripts to update chocolatey packages and ubuntu packages at startup. Usefull for keeping VMs up to date.

## Installation
1.  Copy **check-updates.ps1** to `%UserProfile%\Desktop`.
2.  Copy **check-updates-launcher.cmd** to `%AppData%\Microsoft\Windows\Start Menu\Programs\Startup`

## How does it work

```
GIVEN the user is logged out
WHEN the user logs in
THEN a PowerShell window is shown maximized
AND it checks for chocolatey package updates
AND it checks for ubuntu package updates
AND the user has the option to update or skip each one
```