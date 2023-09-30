#language: pt
@t
Funcionalidade: Teste de Login

  Cenário: Login com sucesso
    Dado que estou na página de login
    Quando eu preencher o campo "Username" com email valido
    E eu preencher o campo "Password" com senha valida
    E eu clicar no botão "Login"
    Então devo ser redirecionado para a página de sucesso
    E devo ver a mensagem "You logged into a secure area!"

  Cenário: Login com credenciais invalidas
    Dado que estou na página de login
    Quando eu preencher o campo "Username" com email invalido
    E eu preencher o campo "Password" com senha invalida
    E eu clicar no botão "Login"
    Então devo ver a mensagem "Your username is invalid!"

  Cenário: Login com username invalido
    Dado que estou na página de login
    Quando eu preencher o campo "Username" com email invalido
    E eu preencher o campo "Password" com senha valida
    E eu clicar no botão "Login"
    Então devo ver a mensagem "Your username is invalid!"

  Cenário: Login com senha invalida
    Dado que estou na página de login
    Quando eu preencher o campo "Username" com email valido
    E eu preencher o campo "Password" com senha invalida
    E eu clicar no botão "Login"
    Então devo ver a mensagem "Your password is invalid!"

  Cenário: Login sem username 
    Dado que estou na página de login
    Quando eu preencher o campo "Password" com senha valida
    E eu clicar no botão "Login"
    Então devo ver a mensagem "Your username is invalid!"

  Cenário: Login sem senha
    Dado que estou na página de login
    Quando eu preencher o campo "Username" com email valido
    E eu clicar no botão "Login"
    Então devo ver a mensagem "Your password is invalid!"

  Cenário: Login sem preencher campos obrigatórios
    Dado que estou na página de login
    Quando eu clicar no botão "Login"
    Então devo ver a mensagem de erro "Username is invalid!"
    E devo ver a mensagem "Password is required"

  Cenário: Fazer Logout
    Dado que estou na página de login
    Quando eu preencho o campo "Username" com email valido
    E eu preencher o campo "Password" com senha valida
    E eu clicar no botão "Login"
    Então devo ser redirecionado para a página de sucesso
    E aperto o botao Logout
    E volto para a area de login