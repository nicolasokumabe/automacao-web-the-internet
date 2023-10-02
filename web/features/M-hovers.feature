#language: pt

Funcionalidade: Verificar a funcionalidade de hover
@t
  Cenario: Verificar o hover sobre as imagens
    Dado que acesso a pagina "http://the-internet.herokuapp.com/hovers"
    Quando eu passar o mouse sobre a primeira imagem
    Entao devo ver o texto "name: user1"
    E quando eu passar o mouse sobre a segunda imagem
    Entao devo ver o texto "name: user2"
    E quando eu passar o mouse sobre a terceira imagem
    Entao devo ver o texto "name: user3"