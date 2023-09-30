#language: pt

Funcionalidade: Controles Dinâmicos

  Cenário: Habilitar e desabilitar campo de entrada
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botao Enable
    Então o campo de entrada deve estar habilitado
    E eu clico no botao Disable
    E o campo de entrada deve estar desabilitado

  Cenário: Adicionar e remover a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botao Remove
    Então a caixa de seleção não deve ser visível
    E eu clico no botao Add
    E a caixa de seleção deve ser visível

  Cenário: Acionando a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botao Remove
    Então a caixa de seleção não deve ser visível
    E eu clico no botao Add
    E a caixa de seleção deve ser visível
    E clico em remove selecionando a caixa
    E vejo a opcao selecionada
