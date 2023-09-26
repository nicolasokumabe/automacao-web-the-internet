#language: pt
@t
Funcionalidade: Verificar Conteúdo Dinâmico

  Cenário: Verificar se o conteúdo na página é dinâmico
    Dado que estou na página de dynamic content
    Quando verifico todas as imagens atuais
    E recarrego a página
    Então devo verificar se as imagens na página foram alteradas

  Cenário: Verificar se os campos de texto das imagens mudam
    Dado que estou na página de dynamic content
    Quando verifico todos os textos de imagens atuais
    E recarrego a página
    Então devo verificar se todos os campos de texto das imagens são diferentes dos textos anteriores

  Cenário: Verificar mudança no conteúdo após clicar no botão
    Dado que estou na página de dynamic content
    E que eu clico no botão "click here"
    Quando verifico todos os textos de imagens atuais
    E recarrego a página
    Então devo verificar se pelo menos um texto de imagem foi modificado
