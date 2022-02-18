# update-choco-ubuntu-at-statup-script
This repo contains the necessary scripts to update chocolatey packages and ubuntu packages at startup. Usefull for keeping VMs up to date.

## Installation
1.  Copy **check-updates.ps1** to `%UserProfile%\Desktop`.
2.  Copy **check-updates-launcher.cmd** to `%AppData%\Microsoft\Windows\Start Menu\Programs\Startup`

## Usage

Every time the machine is started, when a user logs in, a PowerShell window will be shown maximized and will check for chocolatey package updates and then will check for ubuntu package updates. The user has the option to update or skip each one.