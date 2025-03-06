$WShell = New-Object -Com "Wscript.Shell"
$startTime = "08:00"
$endTime = "17:00"

while (1) { 
	$currentTime = Get-Date
	if ($currentTime.TimeOfDay -ge $startTime -and $currentTime.TimeOfDay -le $endTime) {
		Write-Host "Triggers"
	}
		$x = New-Guid
		Write-Host $x;
		$WShell.SendKeys("{SCROLLLOCK}");
		sleep 120
}
