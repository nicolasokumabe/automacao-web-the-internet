#language: pt
@tinymce

Funcionalidade: Automação do TinyMCE

  Cenario: Editar Texto no TinyMCE
    Dado que acesso a pagina "http://the-internet.herokuapp.com/tinymce"
    Quando eu troco para o iframe
    E eu limpo o conteudo
    E eu insiro "Texto automatizado" no editor
    E eu volto para o conteudo principal
    Entao eu devo ver "Texto automatizado"
