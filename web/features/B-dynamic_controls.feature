#language: pt

Funcionalidade: Controles Dinamicos

  Cenario: Habilitar e desabilitar campo de entrada
    Dado que estou na pagina "http://the-internet.herokuapp.com/dynamic_controls"
    Quando eu clico no botao Enable
    Entao o campo de entrada deve estar habilitado
    E eu clico no botao Disable
    E o campo de entrada deve estar desabilitado

  Cenario: Adicionar e remover a caixa de selecao
    Dado que estou na pagina "http://the-internet.herokuapp.com/dynamic_controls"
    Quando eu clico no botao Remove
    Entao a caixa de selecao nao deve ser visivel
    E eu clico no botao Add
    E a caixa de selecao deve ser visivel

  Cenario: Acionando a caixa de selecao
    Dado que estou na pagina "http://the-internet.herokuapp.com/dynamic_controls"
    Quando eu clico no botao Remove
    Entao a caixa de selecao nao deve ser visivel
    E eu clico no botao Add
    E a caixa de selecao deve ser visivel
    E clico em remove selecionando a caixa
    E vejo a opcao selecionada
