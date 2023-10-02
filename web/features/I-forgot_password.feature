#language: pt

Funcionalidade: Recuperação de Senha

  Cenario: Solicitar recuperação de senha
    Dado que estou na pagina "http://the-internet.herokuapp.com/forgot_password"
    Quando eu insiro meu e-mail valido
    E eu clico no botao "Retrieve password"
    Entao devo ver a mensagem "Internal Server Error"