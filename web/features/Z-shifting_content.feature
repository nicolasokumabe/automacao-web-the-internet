#language: pt
@shifting_content

Funcionalidade: Verificar Mudança de Conteudo

  Cenario: Testar o site Menu Element de pixels aleatorios
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico na opcao de carregar pixels aleatoriamente em "menu"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/menu?mode=random"

  Cenario: Testar o site Menu Element de pixels padroniazados
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico na opcao de especificar um numero diferente de pixels em "menu"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/menu?pixel_shift=100"
  
  Cenario: Testar o site Menu Element de pixels padronizados e aleatorios
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico para fazer as duas coisas juntas em "menu"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/menu?mode=random&pixel_shift=100"
  
  Cenario: Testar o site Menu Element botao Home
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico no link "Home"
    Entao devo aguardar o carregamento completo do site "" na rota ""
  
  Cenario: Testar o site Menu Element botao About
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico no link "About"
    Entao devo ver a mensagem "Not Found"
  
  Cenario: Testar o site Menu Element botao Contact Us
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico no link "Contact Us"
    Entao devo ver a mensagem "Not Found"
  
  Cenario: Testar o site Menu Element botao Portfolio
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico no link "Portfolio"
    Entao devo ver a mensagem "Not Found"
  
  Cenario: Testar o site Menu Element botao Gallery
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    E clico no link "Gallery"
    Entao devo ver a mensagem "Not Found"

  Cenario: Testar o site An image de pixels aleatorios
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 2: An image"
    E clico na opcao de carregar pixels aleatoriamente em "image"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/image?mode=random"

  Cenario: Testar o site An image de pixels padroniazados
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 2: An image"
    E clico na opcao de especificar um numero diferente de pixels em "image"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/image?pixel_shift=100"
  
  Cenario: Testar o site An image de pixels padronizados e aleatorios
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 2: An image"
    E clico para fazer as duas coisas juntas em "image"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/image?mode=random&pixel_shift=100"

  Cenario: Testar o site An image acrescentar nova imagem simples
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 2: An image"
    E clico para acrescentar uma nova imagem simples em "image"
    Entao devo aguardar o carregamento completo do site "shifting_content" na rota "/image?image_type=simple"

  Cenario: Testar o site List verificando a reordenacao de paragrafos
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 3: List"
    E eu capturo a ordem atual dos paragrafos
    E eu atualizo a pagina
    E eu capturo a nova ordem dos paragrafos
    Entao a ordem atual dos paragrafos não deve ser igual ah nova ordem dos paragrafos