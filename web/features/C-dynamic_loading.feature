#language: pt

Funcionalidade: Dynamic Loading
@t
  Cenário: Carregar conteúdo dinâmico
    Dado que estou na página de Dynamic Loading
    Quando eu clico no botão Example 1
    Então devo aguardar o carregamento completo
    E clico no botao Start
    E devo ver o texto Hello World! na página
