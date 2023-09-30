#language: pt

Funcionalidade: Recuperação de Senha

  Cenario: Solicitar recuperação de senha
    Dado que estou na pagina de recuperação de senha
    Quando eu insiro meu e-mail valido
    E eu clico no botao "Retrieve password"
    Entao devo ver a mensagem "Internal Server Error"