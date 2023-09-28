#language: pt

Funcionalidade: Dynamic Loading

  Cenário: Verificar se o elemento oculto é exibido ao clicar no botão Start
    Dado que estou na página de Dynamic Loading
    Quando eu clico no botão Example 1
    Então devo aguardar o carregamento completo da rota 1
    E clico no botao Start
    E o elemento oculto deve ser exibido com o texto Hello World!

  Cenário: Verificar se o elemento é adicionado após clicar no botão Start
    Dado que estou na página de Dynamic Loading
    Quando eu clico no botão Example 2
    Então devo aguardar o carregamento completo da rota 2
    E clico no botao Start
    E o elemento deve ser adicionado com o texto Hello World!
