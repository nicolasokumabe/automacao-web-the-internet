#language: pt

Funcionalidade: Digest Auth

  Cenario: Autenticação Criptografada Cancelada
    Dado que estou na pagina de Autenticação Digest
    Quando nao informo minhas credenciais validas
    E clico no botao cancelar
    Entao devo ver a mensagem Esta pagina nao estah funcionando

  Cenario: Autenticação Criptografada
    Dado que estou na pagina de Autenticação Digest
    Quando informo minhas credenciais validas
    E clico no botao de login
    Entao devo ver a mensagem Congratulations! You must have the proper credentials.