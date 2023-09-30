#language: pt
@t
Funcionalidade: Manipular Frames

  Cenário: Entrar em um iframe e interagir com seu conteúdo
    Dado que estou na página de Frames
    Quando eu clicar no link "Nested Frames"
    E eu entro no iframe
    Então o campo de texto deve conter iFrames nao renderizados

  Cenário: Entrar em um frame simples e interagir com seu conteúdo
    Dado que estou na página de Frames
    Quando eu clicar no link "iFrame"
    E eu entro no frame simples
    E eu digito "Em Busca do Primeiro Emprego" no campo de texto do frame simples
    Então o campo de texto do frame simples deve conter "Em Busca do Primeiro Emprego"