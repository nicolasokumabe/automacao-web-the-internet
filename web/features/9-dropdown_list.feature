#language: pt

Funcionalidade: Selecionar opcao em Dropdown
  
  Cenario: Selecionar uma opcao na lista suspensa
    Dado que estou na pagina "http://the-internet.herokuapp.com/dropdown"
    Quando seleciono a opcao "Option 1"
    Entao a opcao "Option 1" deve estar selecionada
    
  Cenario: Selecionar outra opcao na lista suspensa
    Dado que estou na pagina "http://the-internet.herokuapp.com/dropdown"
    Quando seleciono a opcao "Option 2"
    Entao a opcao "Option 2" deve estar selecionada