#language: pt
# @temp
Funcionalidade: Digest Auth

  Cenário: Autenticação Criptografada Cancelada
    Dado que estou na página de Autenticação Digest
    Quando não informo minhas credenciais válidas
    E clico no botão cancelar
    Então devo ver a mensagem "Esta página não está funcionando"

  Cenário: Autenticação Criptografada
    Dado que estou na página de Autenticação Digest
    Quando informo minhas credenciais válidas
    E clico no botão de login
    Então devo ver a mensagem "Congratulations! You must have the proper credentials."