Param(
  [string]$fileName,
  [string]$fileCount
)
Write-Host "Creating files..."
$fileSize = 1GB
for ($i = 1; $i -le $fileCount; $i++) {
    $outputFileName = "$fileName.$i"
    Write-Host "Writing $outputFileName ($i/$fileCount)"
    
    $file = [System.IO.File]::Create($outputFileName)
    $file.SetLength($fileSize)
    $file.Close()
}
Write-Host "Done!"
