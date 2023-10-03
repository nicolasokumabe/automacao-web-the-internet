#language: pt
@javascript_alerts

Funcionalidade: Alertas JavaScript

  Cenario: Clicar em Alerta JavaScript
    Dado que acesso a pagina "http://the-internet.herokuapp.com/jqueryui/menu"
    Quando eu clicar no botao "Clique para Alerta JS"
    Entao devo ver um alerta com o texto "Eu sou um Alerta JS"
    E eu aceito o alerta

  Cenario: Clicar em Confirmação JavaScript
    Dado que acesso a pagina "http://the-internet.herokuapp.com/jqueryui/menu"
    Quando eu clicar no botao "Clique para Confirmação JS"
    Entao devo ver um alerta com o texto "Eu sou uma Confirmação JS"
    E eu rejeito o alerta
    E eu devo ver o texto do resultado "Você clicou: Cancelar"

  Cenario: Clicar em Prompt JavaScript
    Dado que acesso a pagina "http://the-internet.herokuapp.com/jqueryui/menu"
    Quando eu clicar no botao "Clique para Prompt JS"
    Entao devo ver um alerta com o texto "Eu sou um Prompt JS"
    E eu digito "Olá, Mundo!" no prompt
    E eu aceito o alerta
    E eu devo ver o texto do resultado "Você digitou: Olá, Mundo!"
