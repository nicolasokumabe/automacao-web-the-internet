#language: pt

Funcionalidade: Recuperação de Senha

  Cenário: Solicitar recuperação de senha
    Dado que estou na página de recuperação de senha
    Quando eu insiro meu e-mail válido
    E eu clico no botao "Retrieve password"
    Então devo ver a mensagem "Internal Server Error"
    

  

