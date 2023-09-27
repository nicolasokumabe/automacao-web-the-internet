#language: pt

Funcionalidade: Controles Dinâmicos

  Cenário: Habilitar e desabilitar campo de entrada
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão Enable
    Então o campo de entrada deve estar habilitado
    E eu clico no botão Disable
    E o campo de entrada deve estar desabilitado

  Cenário: Adicionar e remover a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão Remove
    Então a caixa de seleção não deve ser visível
    E eu clico no botão Add
    E a caixa de seleção deve ser visível
@t
  Cenário: Acionando a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão Remove
    Então a caixa de seleção não deve ser visível
    E eu clico no botão Add
    E a caixa de seleção deve ser visível
    E clico em remove selecionando a caixa
    E vejo a opcao selecionada
