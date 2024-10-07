$installPath = "C:\Program Files (x86)\Parsec\TrakSYS"
$exePath = "$installPath\InstallationManager.exe"

Clear-Host

$process = Start-Process $exePath "Install-TeaGetPackage Umbrella.StarterKit -Silent -Verbose -Force " -PassThru -Wait
if ($process.ExitCode -ne 0)
{
    $procExitCode = $process.ExitCode
    Write-Error "Error [$procExitCode]"
    exit $process.ExitCode
}

Write-Host "Complete"

