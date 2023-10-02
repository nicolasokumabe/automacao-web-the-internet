#language: pt

Funcionalidade: Interagir com o controle deslizante horizontal
@t
  Cenario: Mover o controle deslizante horizontal
    Dado que estou na pagina "http://the-internet.herokuapp.com/horizontal_slider"
    Quando eu mover o controle deslizante para a posicao 2.5
    Entao o range deve ser "2.5"
