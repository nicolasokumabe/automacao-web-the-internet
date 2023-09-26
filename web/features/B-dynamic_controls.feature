#language: pt
@t
Funcionalidade: Controles Dinâmicos

  Cenario: Habilitar e desabilitar campo de entrada
    Dado que estou na página de Dynamic Controls
    Quando eu clico no botão "Enable"
    Então o campo de entrada deve estar habilitado
    E o campo de entrada deve estar desabilitado