$WShell = New-Object -Com "Wscript.Shell"

while (1) { 
	Write-Host "It is currently between 8:00 and 17:00"
	$x = New-Guid
	Write-Host $x;
	$WShell.SendKeys("{SCROLLLOCK}");
	sleep 120
}
