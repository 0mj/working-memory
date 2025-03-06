$WShell = New-Object -Com "Wscript.Shell"
$startTime = "07:00"
$endTime = "16:58"
$working=1
while ($working) { 
	$currentTime = Get-Date
	if ($currentTime.TimeOfDay -ge $startTime -and $currentTime.TimeOfDay -le $endTime) {
		Write-Host ($currentTime).ToString("HH:mm")
		$WShell.SendKeys("{SCROLLLOCK}");
		sleep 5
		Write-Host "serve others | Transparency | Adaptation | "
		$WShell.SendKeys("{SCROLLLOCK}");
		# sleep 120
		sleep 570
	}
	else {
	  
  		$working=0
  		Write-Host "hooty hoo! it's 1700!"
	}
}
