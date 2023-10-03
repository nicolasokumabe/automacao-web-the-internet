#language: pt
@inputs

Funcionalidade: Pagina de Entrada Numerica

  Cenario: Usar as setas para incrementar e decrementar o valor
    Dado que acesso a pagina "http://the-internet.herokuapp.com/inputs"
    Quando eu insiro o valor "10" no campo de entrada
    E eu pressiono a seta para cima
    Entao o valor "11" deve ser exibido no campo de entrada
    Quando eu pressiono a seta para baixo duas vezes
    Entao o valor "9" deve ser exibido no campo de entrada
