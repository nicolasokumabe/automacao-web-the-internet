#language: pt

Funcionalidade: Basic Auth

  Cenario: Autenticacao basica sem sucesso
    Dado que acesso a pagina Basic Auth
    Quando nao informo minhas credenciais validas
    E clico no botao cancelar
    Entao recebo a mensagem Not authorized

  Cenario: Autenticacao basica com sucesso
    Dado que acesso a pagina Basic Auth
    Quando informo minhas credenciais validas
    E clico no botao de login
    Entao sou redirecionado para o Dashboard
    E recebo a mensagem Congratulations! You must have the proper credentials.

