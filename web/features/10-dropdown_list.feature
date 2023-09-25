# language: pt

Funcionalidade: Selecionar Opção em Dropdown
  
  Cenário: Selecionar uma opção na lista suspensa
    Dado que estou na página de dropdown
    Quando seleciono a opção "Option 1"
    Então a opção "Option 1" deve estar selecionada
    
  Cenário: Selecionar outra opção na lista suspensa
    Dado que estou na página de dropdown
    Quando seleciono a opção "Option 2"
    Então a opção "Option 2" deve estar selecionada