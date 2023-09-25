#language: pt

Funcionalidade: Basic Auth

  Cenario: Autenticacao basica sem sucesso
    Dado que acesso a pagina Basic Auth
    Quando não submeto o meu login completo
    E clico em cancelar
    Então recebo a mensagem Not authorized

  Cenario: Autenticacao basica com sucesso
    Dado que acesso a pagina Basic Auth
    Quando submeto o meu login completo
    E clico em login
    Então sou redirecionado para o Dashboard
    E recebo a mensagem Congratulations! You must have the proper credentials.
