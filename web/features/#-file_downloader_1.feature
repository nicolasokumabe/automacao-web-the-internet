#language: pt

Funcionalidade: Download de Arquivo

  Cenario: Fazer o download de um arquivo
    Dado que acesso a pagina "http://the-internet.herokuapp.com/download"
    Quando eu clico no link de download do arquivo
    Entao o arquivo deve ser baixado com sucesso

