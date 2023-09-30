#language: pt

Funcionalidade: Digest Auth

  Cenário: Autenticação Criptografada Cancelada
    Dado que estou na página de Autenticação Digest
    Quando não informo minhas credenciais válidas
    E clico no botao cancelar
    Então devo ver a mensagem Esta página não está funcionando

  Cenário: Autenticação Criptografada
    Dado que estou na página de Autenticação Digest
    Quando informo minhas credenciais válidas
    E clico no botao de login
    Então devo ver a mensagem Congratulations! You must have the proper credentials.