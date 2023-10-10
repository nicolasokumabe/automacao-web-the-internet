#language: pt

Funcionalidade: Download de Arquivo

  Cenario: Fazer o download de um arquivo
    Dado que acesso a pagina "/download"
    Quando clico no link de download do arquivo
    Entao o arquivo deve ser baixado com sucesso