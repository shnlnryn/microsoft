@ECHO OFF
echo Enabling WinRM
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Enable-PSRemoting -SkipNetworkProfileCheck -Force
echo Gathering AutoPilot Hash
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command %~dp0Get-WindowsAutoPilotInfo.ps1 -ComputerName $env:computername -OutputFile %~dp0DeviceHash.csv -append
echo Done!
pause