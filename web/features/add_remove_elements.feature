#language: pt

Funcionalidade: Adicionar/remover elemento

  Cenario: Adicionar elemento
    Dado que acesso a página Add/Remove Elements
    Quando clico em Add Element
    Então eh adicionado o elemento

  Cenario: Remover elemento
    Dado que acesso a página Add/Remove Elements
    Quando clico em Delete
    Então o elemento adicionado eh removido