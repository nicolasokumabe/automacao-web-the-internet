#language: pt
@digest_auth

Funcionalidade: Digest Auth

  Cenario: Autenticação Criptografada Cancelada
    Dado que acesso a pagina "/digest_auth"
    Quando nao informo minhas credenciais validas
      E clico no botao cancelar
    Entao devo ver o texto "Esta página não está funcionando"

  Cenario: Autenticação Criptografada
    Dado que acesso a pagina "/digest_auth"
    Quando informo minhas credenciais validas
      E clico no botao de login
    Entao devo ver o texto "Congratulations! You must have the proper credentials."