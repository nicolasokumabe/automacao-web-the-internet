#language: pt

Funcionalidade: Dynamic Loading

  Cenario: Verificar se o elemento oculto eh exibido ao clicar no botao Start
    Dado que estou na pagina de Dynamic Loading
    Quando eu clico no botao Example 1
    Entao devo aguardar o carregamento completo da rota 1
    E clico no botao Start
    E o elemento oculto deve ser exibido com o texto Hello World!

  Cenario: Verificar se o elemento eh adicionado apos clicar no botao Start
    Dado que estou na pagina de Dynamic Loading
    Quando eu clico no botao Example 2
    Entao devo aguardar o carregamento completo da rota 2
    E clico no botao Start
    E o elemento deve ser adicionado com o texto Hello World!
