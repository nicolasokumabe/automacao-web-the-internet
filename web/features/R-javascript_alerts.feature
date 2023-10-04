#language: pt
@javascript_alerts

Funcionalidade: Alertas JavaScript

  Cenario: Clicar em Alerta JavaScript
    Dado que acesso a pagina "http://the-internet.herokuapp.com/javascript_alerts"
    Quando eu clicar no botao "Click for JS Alert"
    Entao devo ver um alerta com o texto "I am a JS Alert"
    E eu aceito o alerta

  Cenario: Clicar em Confirmação JavaScript e Confirmo
    Dado que acesso a pagina "http://the-internet.herokuapp.com/javascript_alerts"
    Quando eu clicar no botao "Click for JS Confirm"
    Entao devo ver um alerta com o texto "I am a JS Confirm"
    E eu aceito o alerta
    E eu devo ver o texto do resultado "You clicked: Ok"

  Cenario: Clicar em Confirmação JavaScript e Cancelo
    Dado que acesso a pagina "http://the-internet.herokuapp.com/javascript_alerts"
    Quando eu clicar no botao "Click for JS Confirm"
    Entao devo ver um alerta com o texto "I am a JS Confirm"
    E eu rejeito o alerta
    E eu devo ver o texto do resultado "You clicked: Cancel"

  Cenario: Clicar em Prompt JavaScript e Confirmo
    Dado que acesso a pagina "http://the-internet.herokuapp.com/javascript_alerts"
    Quando eu clicar no botao "Click for JS Prompt"
    Entao devo ver um alerta com o texto "I am a JS prompt"
    E eu digito "Vini Jr camisa 7" no prompt
    E eu aceito o alerta
    E eu devo ver o texto do resultado "Vini Jr camisa 7"

  Cenario: Clicar em Prompt JavaScript e Cancelo
    Dado que acesso a pagina "http://the-internet.herokuapp.com/javascript_alerts"
    Quando eu clicar no botao "Click for JS Prompt"
    Entao devo ver um alerta com o texto "I am a JS prompt"
    E eu rejeito o alerta
    E eu devo ver o texto do resultado "You entered: null"
