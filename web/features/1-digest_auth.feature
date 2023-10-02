#language: pt

Funcionalidade: Digest Auth

  Cenario: Autenticação Criptografada Cancelada
    Dado que acesso a pagina "http://the-internet.herokuapp.com/digest_auth"
    Quando nao informo minhas credenciais validas
    E clico no botao cancelar
    Entao devo ver a mensagem Esta pagina nao estah funcionando

  Cenario: Autenticação Criptografada
    Dado que acesso a pagina "http://the-internet.herokuapp.com/digest_auth"
    Quando informo minhas credenciais validas
    E clico no botao de login
    Entao devo ver a mensagem Congratulations! You must have the proper credentials.