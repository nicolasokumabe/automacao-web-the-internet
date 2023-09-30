#language: pt

Funcionalidade: Arrastar e Soltar

  Cenario: Arrastar um elemento A para o local do elemento B
    Dado que estou na pagina de Arrastar e Soltar
    Quando arrasto o elemento A para o local do elemento B
    Entao devo verificar que o elemento A foi movido com sucesso para o local do elemento B

  Cenario: Arrastar um elemento B para o local do elemento A
    Dado que estou na pagina de Arrastar e Soltar
    Quando arrasto o elemento B para o local do elemento A
    Entao devo verificar que o elemento B foi movido com sucesso para o local do elemento A
