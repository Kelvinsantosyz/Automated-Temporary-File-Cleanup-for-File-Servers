$diretorio = "Caminho para sua pasta"

# Verifica se a pasta existe
if (Test-Path $diretorio) {
    # Obtém todos os arquivos, incluindo os de subpastas, e apaga-os
    $arquivos = Get-ChildItem $diretorio -File -Recurse -Force
    if ($arquivos) {
        Write-Host "Arquivos encontrados: $($arquivos.Count)"
        $arquivos | Remove-Item -Force
        Write-Host "Todos os arquivos foram apagados da pasta e suas subpastas: $diretorio"
    } else {
        Write-Host "Não há arquivos na pasta ou subpastas para apagar."
    }
} else {
    Write-Host "A pasta especificada não existe."
}
