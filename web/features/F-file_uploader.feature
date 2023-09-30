#language: pt

Funcionalidade: Realizar upload de arquivo

  Cenário: Fazer upload de um arquivo
    Dado que estou na página de upload
    Quando eu selecionar o arquivo "img.png" para upload
    E eu clicar no botao "Upload"
    Então devo ver a mensagem "File Uploaded!" na página

  Cenário: Fazer upload de nenhum arquivo
    Dado que estou na página de upload
    Quando eu clicar no botao "Upload"
    Então devo ver a mensagem "Internal Server Error" na página