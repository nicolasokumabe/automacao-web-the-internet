#language: pt
@hover

Funcionalidade: Verificar a funcionalidade de hover

  Cenario: Verificar o hover sobre a imagen 1
    Dado que acesso a pagina "http://the-internet.herokuapp.com/hovers"
    Quando eu passar o mouse sobre a primeira imagem
    Entao devo ver o texto "name: user1"
    Quando clico no link "View profile"
    Entao devo ver a mensagem "Not Found"

  Cenario: Verificar o hover sobre a imagen 2
    Dado que acesso a pagina "http://the-internet.herokuapp.com/hovers"
    Quando eu passar o mouse sobre a segunda imagem
    Entao devo ver o texto "name: user2"
    Quando clico no link "View profile"
    Entao devo ver a mensagem "Not Found"

  Cenario: Verificar o hover sobre a imagen 3
    Dado que acesso a pagina "http://the-internet.herokuapp.com/hovers"
    Quando eu passar o mouse sobre a terceira imagem
    Entao devo ver o texto "name: user3"
    Quando clico no link "View profile"
    Entao devo ver a mensagem "Not Found"