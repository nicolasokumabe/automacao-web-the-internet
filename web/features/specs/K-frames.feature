#language: pt

@iframe
Funcionalidade: Manipular Frames

@iframe1
  Cenario: Entrar em um iframe e interagir com seu conteudo
    Dado que acesso a pagina "/frames"
    Quando clico no link "Nested Frames"
    Entao devo aguardar o carregamento completo do site "nested_frames" na rota ""
    E o campo de texto deve conter iFrames nao renderizados

@iframe2
  Cenario: Entrar em um frame simples e interagir com seu conteudo
    Dado que acesso a pagina "/frames"
    Quando clico no link "iFrame"
    Entao devo aguardar o carregamento completo do site "iframe" na rota ""
    Quando eu digito "Em Busca do Primeiro Emprego" no campo de texto do frame simples
    Entao o campo de texto do frame simples deve conter "Em Busca do Primeiro Emprego"
    
@iframe3
  Cenario: Verificar funcionalidade do iFrame
    Dado que acesso a pagina "/iframe"
    Quando eu mudo o formato do texto
    Entao o campo de texto do frame simples deve mudar de formato