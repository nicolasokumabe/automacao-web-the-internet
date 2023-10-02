#language: pt

Funcionalidade: Manipular Frames

  Cenario: Entrar em um iframe e interagir com seu conteudo
    Dado que estou na pagina "http://the-internet.herokuapp.com/nested_frames"
    Quando eu clico no link "Nested Frames"
    E eu entro no iframe
    Entao o campo de texto deve conter iFrames nao renderizados

  Cenario: Entrar em um frame simples e interagir com seu conteudo
    Dado que estou na pagina "http://the-internet.herokuapp.com/frames"
    Quando eu clico no link "iFrame"
    E eu entro no frame simples
    E eu digito "Em Busca do Primeiro Emprego" no campo de texto do frame simples
    Entao o campo de texto do frame simples deve conter "Em Busca do Primeiro Emprego"

  Cenario: Verificar funcionalidade do iFrame
    Dado que estou na pagina "http://the-internet.herokuapp.com/frames"
    Quando eu mudo o formato do texto
    Entao o campo de texto do frame simples deve mudar de formato