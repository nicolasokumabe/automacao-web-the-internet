#language: pt

Funcionalidade: Dynamic Loading

  Cenário: Carregar conteúdo dinâmico
    Dado que estou na página de Dynamic Loading
    Quando eu clico no botão Example 2
    Então devo aguardar o carregamento completo
    E devo ver o texto Hello World! na página
