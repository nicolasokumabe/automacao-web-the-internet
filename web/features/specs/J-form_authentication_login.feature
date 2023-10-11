#language: pt

Funcionalidade: Teste de Login

  Cenario: Login com sucesso
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Username" com email valido
    E eu preencho o campo "Password" com senha valida
    E eu clico no botao "Login"
    Entao devo ser redirecionado para a pagina de sucesso
    E devo ver o texto "You logged into a secure area!"

  Cenario: Login com credenciais invalidas
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Username" com email invalido
    E eu preencho o campo "Password" com senha invalida
    E eu clico no botao "Login"
    Entao devo ver o texto "Your username is invalid!"

  Cenario: Login com username invalido
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Username" com email invalido
    E eu preencho o campo "Password" com senha valida
    E eu clico no botao "Login"
    Entao devo ver o texto "Your username is invalid!"

  Cenario: Login com senha invalida
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Username" com email valido
    E eu preencho o campo "Password" com senha invalida
    E eu clico no botao "Login"
    Entao devo ver o texto "Your password is invalid!"

  Cenario: Login sem username 
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Password" com senha valida
    E eu clico no botao "Login"
    Entao devo ver o texto "Your username is invalid!"

  Cenario: Login sem senha
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Username" com email valido
    E eu clico no botao "Login"
    Entao devo ver o texto "Your password is invalid!"

  Cenario: Login sem preencher campos obrigatórios
    Dado que acesso a pagina "/login"
    Quando eu clico no botao "Login"
    Entao devo ver o texto "Your username is invalid!"

  Cenario: Fazer Logout
    Dado que acesso a pagina "/login"
    Quando eu preencho o campo "Username" com email valido
    E eu preencho o campo "Password" com senha valida
    E eu clico no botao "Login"
    Entao devo ser redirecionado para a pagina de sucesso
    Quando clico no link "Logout"
    E volto para a area de login