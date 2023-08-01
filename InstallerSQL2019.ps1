function Install-SQLServerDeveloper2019 {
    Write-Host "Downloading SQL Server Developer 2019..."
    $Path = $env:TEMP
    $Installer = "SQL2019-SSEI-Dev.exe"
    $URL = "https://go.microsoft.com/fwlink/?linkid=866662"
    Start-BitsTransfer -Source $URL -Destination $Path\$Installer
    #Invoke-WebRequest $URL -OutFile $Path\$Installer

    Write-Host "Installing SQL Server Developer..."
    Start-Process -FilePath $Path\$Installer -Args "/ACTION=Install /IACCEPTSQLSERVERLICENSETERMS /ENU /FEATURES=SQL,AS,IS" -Verb RunAs -Wait
    Remove-Item $Path\$Installer
}

Install-SQLServerDeveloper2019