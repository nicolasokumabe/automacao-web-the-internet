# language: pt
Funcionalidade: Controles Dinâmicos

  
  Cenário: Habilitar e desabilitar campo de entrada
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão Enable
    Então o campo de entrada deve estar habilitado
    E eu clico no botão Disable
    E o campo de entrada deve estar desabilitado
@t
  Cenário: Adicionar e remover a caixa de seleção
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão Remove
    Então a caixa de seleção não deve ser visível
    E eu clico no botão Add
    E a caixa de seleção deve ser visível

  # @t
  # Cenário: Adicionar a caixa de seleção
  #   Dado que estou na página de Dynamic Controls
  #   Quando eu aguardo o botão Adicionar ficar habilitado
  #   E eu clico no botão Adicionar
  #   E aguardo a caixa de seleção ser adicionada com sucesso
  #   Então a caixa de seleção deve ser adicionada novamente
