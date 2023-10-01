#language: pt
@t
Funcionalidade: Manipular Frames

  Cenario: Entrar em um iframe e interagir com seu conteudo
    Dado que estou na pagina de Frames
    Quando eu clico no link "Nested Frames"
    E eu entro no iframe
    Entao o campo de texto deve conter iFrames nao renderizados

  Cenario: Entrar em um frame simples e interagir com seu conteudo
    Dado que estou na pagina de Frames
    Quando eu clico no link "iFrame"
    E eu entro no frame simples
    E eu digito "Em Busca do Primeiro Emprego" no campo de texto do frame simples
    Entao o campo de texto do frame simples deve conter "Em Busca do Primeiro Emprego"