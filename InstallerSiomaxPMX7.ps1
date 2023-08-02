function Install-Siomax {
    Write-Host "Downloading Siomax 7..."
    $Path = $env:TEMP
    $Installer = "smx.exe"
    $URL = "https://github.com/SiomaxPMX/ArtifactsRepo/releases/download/7.0.1_beta.2/Siomax_7.0.1.0_PMX_32.exe"
    Start-BitsTransfer -Source $URL -Destination $Path\$Installer

    Write-Host "Installing Siomax 7..."
    Start-Process -FilePath $Path\$Installer -Verb RunAs -Wait
    Remove-Item $Path\$Installer
}

Install-Siomax