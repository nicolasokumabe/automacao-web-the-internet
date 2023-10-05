#language: pt
@windows

Funcionalidade: Manipulação de Janelas

  Cenario: Abrir e verificar nova janela
    Dado que acesso a pagina "http://the-internet.herokuapp.com/windows"
    Quando clico no link "Click Here"
    E eu mudo para a nova janela
    Entao devo ver o texto "New Window"
    E devo fechar a nova janela
