#language: pt
@infinite_scroll

Funcionalidade: Testar a funcionalidade de rolagem infinita

  Cenario: Verificar se a rolagem infinita carrega mais elementos
    Dado que acesso a pagina "http://the-internet.herokuapp.com/infinite_scroll"
    Quando eu rolar a pagina para baixo
    Entao devo ver mais elementos carregados 