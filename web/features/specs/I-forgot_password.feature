#language: pt

Funcionalidade: Recuperação de Senha

  Cenario: Solicitar recuperação de senha
    Dado que acesso a pagina "/forgot_password"
    Quando eu insiro meu e-mail valido
      E eu clico no botao "Retrieve password"
    Entao devo ver o texto "Internal Server Error"