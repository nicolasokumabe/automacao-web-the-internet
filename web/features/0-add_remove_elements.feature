#language: pt

Funcionalidade: Adicionar/remover elemento

  Cenario: Adicionar elemento
    Dado que acesso a pagina "http://the-internet.herokuapp.com/add_remove_elements/"
    Quando clico em Add Element
    Entao eh adicionado o elemento

  Cenario: Remover elemento
    Dado que acesso a pagina "http://the-internet.herokuapp.com/add_remove_elements/"
    Quando clico em Delete
    Entao o elemento adicionado eh removido