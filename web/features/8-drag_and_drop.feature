#language: pt

Funcionalidade: Arrastar e Soltar

  Cenario: Arrastar um elemento A para o local do elemento B
    Dado que acesso a pagina "http://the-internet.herokuapp.com/drag_and_drop"
    Quando arrasto o elemento A para o local do elemento B
    Entao devo verificar que o elemento A foi movido com sucesso para o local do elemento B

  Cenario: Arrastar um elemento B para o local do elemento A
    Dado que acesso a pagina "http://the-internet.herokuapp.com/drag_and_drop"
    Quando arrasto o elemento B para o local do elemento A
    Entao devo verificar que o elemento B foi movido com sucesso para o local do elemento A
