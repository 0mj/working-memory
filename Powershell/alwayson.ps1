$WShell = New-Object -Com "Wscript.Shell"
while (1) { 
	$x = New-Guid
	Write-Host $x;
	$WShell.SendKeys("{SCROLLLOCK}");
	sleep 120
}
