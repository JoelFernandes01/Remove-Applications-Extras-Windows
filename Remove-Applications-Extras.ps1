# Function to uninstall an app
function Uninstall-App {
    param (
        [string]$packageName
    )
    
    # Check if the app is installed
    $app = Get-AppxPackage | Where-Object { $_.Name -eq $packageName }
    if ($app -ne $null) {
        # Uninstall the app
        Write-Output "Uninstalling $packageName..."
        $app | Remove-AppxPackage -Verbose
        Write-Output "Uninstalled $packageName."
    } else {
        Write-Output "$packageName is not installed."
    }
}

# List of app package names
$appPackageNames = @(
    "Microsoft.WindowsAlarms"
    "Microsoft.549981C3F5F10"
    "Microsoft.WindowsCamera"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.Getstarted"
    "Microsoft.ZuneMusic"
    "Microsoft.HEIFImageExtension"
    "Microsoft.GetHelp"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.ZuneVideo"
    "Microsoft.Office.OneNote"
    "Microsoft.Windows.People"
    "Microsoft.Windows.Photos"
    "Microsoft.ScreenSketch"
    "Microsoft.WindowsSoundRecorder"
    "Microsoft.WebpImageExtension"
    "Microsoft.YourPhone"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.XboxGameCallableUI"
    "Microsoft.XboxApp"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.Xbox.TCUI"
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxGameOverlay"
    "Microsoft.MixedReality.Portal"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.People"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.OneDrive"
    "Microsoft.OneNote"
    "Microsoft.MicrosoftEdge"
    "Microsoft.WebView2Runtime"
    "MicrosoftEdgeUpdate"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.ZuneVideo"
    "Microsoft.ZuneMusic"
    "Microsoft.BingWeather"
    "Microsoft.WindowsCommunicationsApps"
    "Microsoft.SkypeApp"
    "Microsoft.MixedReality"
)

# Loop through the app list and uninstall each app
foreach ($packageName in $appPackageNames) {
    Uninstall-App -packageName $packageName
}
