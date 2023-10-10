#language: pt

@iframe
Funcionalidade: Manipular Frames

@iframe1
  Cenario: Entrar em um iframe e interagir com seu conteudo
    Dado que acesso a pagina "/frames"
    Quando clico no link "Nested Frames"
    E eu entro no iframe
    Entao o campo de texto deve conter iFrames nao renderizados

@iframe2
  Cenario: Entrar em um frame simples e interagir com seu conteudo
    Dado que acesso a pagina "/frames"
    Quando clico no link "iFrame"
    E eu entro no frame simples
    E eu digito "Em Busca do Primeiro Emprego" no campo de texto do frame simples
    Entao o campo de texto do frame simples deve conter "Em Busca do Primeiro Emprego"
    
@iframe3
  Cenario: Verificar funcionalidade do iFrame
    Dado que acesso a pagina "/iframe"
    Quando eu mudo o formato do texto
    Entao o campo de texto do frame simples deve mudar de formato