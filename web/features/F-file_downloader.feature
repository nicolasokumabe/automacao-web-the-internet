#language: pt
@t
Funcionalidade: Download de Arquivo

  Cenário: Fazer o download de um arquivo
    Dado que estou na página de Download
    Quando eu clico no link de download do arquivo
    Então o arquivo deve ser baixado com sucesso

  Cenário: Verificar a existência do arquivo na pasta de downloads
    Dado que estou na página de Download
    Quando eu clico no link de download do arquivo
    Então o arquivo deve ser baixado com sucesso
    E o arquivo deve existir na pasta de downloads
