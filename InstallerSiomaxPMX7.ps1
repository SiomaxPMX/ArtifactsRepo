function Install-Siomax {
    Write-Host "Downloading Siomax 7..."
    $Path = $env:TEMP
    $Installer = "smx.exe"
    $URL = "https://github.com/SiomaxPMX/ArtifactsRepo/releases/download/7.0.1_beta.1/Siomax7pmx_32_7.0.1_beta.1.exe"
    Start-BitsTransfer -Source $URL -Destination $Path\$Installer

    Write-Host "Installing Siomax 7..."
    Start-Process -FilePath $Path\$Installer -Verb RunAs -Wait
    Remove-Item $Path\$Installer
}

Install-Siomax