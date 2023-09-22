#language: pt

Funcionalidade: Digest Auth

  Cenário: Autenticação Criptografada
    Dado que estou na página de Autenticação Digest
    Quando informo minhas credenciais válidas
    E clico no botão de login
    Então devo ver a mensagem "Congratulations! You must have the proper credentials."