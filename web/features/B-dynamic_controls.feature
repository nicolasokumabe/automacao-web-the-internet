#language: pt

Funcionalidade: Controles Dinâmicos

  Cenario: Habilitar e desabilitar campo de entrada
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão "Enable"
    Então o campo de entrada deve estar habilitado
    E o campo de entrada deve estar desabilitado
@t
  Cenário: Remover a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão "Remove"
    E aguardo a caixa de seleção ser removida
    Então a caixa de seleção não deve ser visível

@t
  Cenário: Adicionar a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu aguardo o botão "Add" ficar habilitado
    E eu clico no botão "Add"
    E aguardo a caixa de seleção ser adicionada
    Então a caixa de seleção deve ser adicionada novamente