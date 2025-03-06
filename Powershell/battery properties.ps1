iss20-portal-staging01.bravowell.com

# Set the threshold for battery percentage
$thresholdPercentage = 20

# Set the duration in minutes after which the computer should be turned off
$turnOffAfterMinutes = 60

# Get battery information
$battery = Get-WmiObject -Class Win32_Battery

# Check if battery is present
if ($battery) {
    # Check if battery level is below the threshold
    if ($battery.EstimatedChargeRemaining -lt $thresholdPercentage) {
        Write-Host "Battery level is below $thresholdPercentage%. Turning off the computer."
        # Sleep for a few seconds before shutting down (optional)
        Start-Sleep -Seconds 10
        Stop-Computer
    }
} else {
    Write-Host "Battery not found."
}

# Uncomment the following lines if you want to turn off the computer after a specific duration
# Write-Host "Waiting for $turnOffAfterMinutes minutes before turning off the computer..."
# Start-Sleep -Seconds ($turnOffAfterMinutes * 60)
# Write-Host "Turning off the computer after $turnOffAfterMinutes minutes."
# Stop-Computer
