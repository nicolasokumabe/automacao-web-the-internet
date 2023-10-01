#language: pt

Funcionalidade: Verificar a Geolocalização no site The Internet

  Cenario: Verificar se a geolocalização estah funcionando
    Dado que estou na pagina de Geolocalização do site
    Quando eu clico no botao "Where am I?"
    Entao devo ver a mensagem "You are here:"
