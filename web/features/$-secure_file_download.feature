#language: pt
@secure_file_download

Funcionalidade: Download de Arquivo Seguro

  Cenario: Realizar o download de um arquivo seguro com falha na autenticacao
    Dado que acesso a pagina "http://the-internet.herokuapp.com/download_secure"
    Quando nao informo minhas credenciais validas
    E clico no botao cancelar
    Entao recebo a mensagem Not authorized

  Cenario: Realizar o download de um arquivo seguro com sucesso
    Dado que acesso a pagina "http://the-internet.herokuapp.com/download_secure"
    Quando informo minhas credenciais validas
    E clico no botao de login
    E clico no link de download do arquivo
    Entao o arquivo deve ser baixado com sucesso