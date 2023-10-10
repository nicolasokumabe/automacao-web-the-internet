#language: pt

Funcionalidade: Verificacao de Elementos que Desaparecem

  Cenario: Verificar botao Home
    Dado que acesso a pagina "/disappearing_elements"
    Quando clico no link "Home"
    Entao devo ser redirecionado para a pagina inicial

  Cenario: Verificar botao About
    Dado que acesso a pagina "/disappearing_elements"
    Quando clico no link "About"
    Entao devo ser redirecionado para a pagina Sobre

  Cenario: Verificar botao Contact Us
    Dado que acesso a pagina "/disappearing_elements"
    Quando clico no link "Contact Us"
    Entao devo ser redirecionado para a pagina Contate-nos

  Cenario: Verificar botao Portfolio
    Dado que acesso a pagina "/disappearing_elements"
    Quando clico no link "Portfolio"
    Entao devo ser redirecionado para a pagina Portfolio