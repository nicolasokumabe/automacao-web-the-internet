#language: pt
@shifting_content

Funcionalidade: Verificar Deslocamento de Conteudo

  Cenario: Testar o site Shift Content
    Dado que acesso a pagina "http://the-internet.herokuapp.com/shifting_content"
    Quando clico no link "Example 1: Menu Element"
    Quando clico na opcao de carregar pixels aleatoriamente
    Entao devo aguardar o carregamento completo do site "/shifting_content" na rota "/menu?mode=random"
    Quando clico na opcao de especificar um numero diferente de pixels
    Entao devo aguardar o carregamento completo do site "/shifting_content" na rota "/menu?pixel_shift=100"
    Quando clico para fazer as duas coisas juntas
    Entao devo aguardar o carregamento completo do site "/shifting_content" na rota "/menu?mode=random&pixel_shift=100"
    Quando clico no link "Home"
    Entao devo aguardar o carregamento completo do site "" na rota ""
    Quando clico no link "About"
    Entao devo ver a mensagem "Not Found"
    Quando clico no link "Contact Us"
    Entao devo ver a mensagem "Not Found"
    Quando clico no link "Portfolio"
    Entao devo ver a mensagem "Not Found"
    Quando clico no link "Gallery"
    Entao devo ver a mensagem "Not Found"
