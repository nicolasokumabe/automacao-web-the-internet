#language: pt

Funcionalidade: Arrastar e Soltar

  Cenário: Arrastar um elemento A para o local do elemento B
    Dado que acesso a página de Arrastar e Soltar
    Quando arrasto o elemento A para o local do elemento B
    Então devo verificar que o elemento A foi movido com sucesso para o local do elemento B

  Cenário: Arrastar um elemento B para o local do elemento A
    Dado que acesso a página de Arrastar e Soltar
    Quando arrasto o elemento B para o local do elemento A
    Então devo verificar que o elemento B foi movido com sucesso para o local do elemento A
