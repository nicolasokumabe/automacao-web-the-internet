#language: pt

Funcionalidade: Verificar conteudo Dinamico

  Cenario: Verificar se o conteudo na pagina eh Dinamico
    Dado que estou na pagina de dynamic content
    Quando verifico todas as imagens atuais
    E recarrego a pagina
    Entao devo verificar se as imagens na pagina foram alteradas

  Cenario: Verificar se os campos de texto das imagens mudam
    Dado que estou na pagina de dynamic content
    Quando verifico todos os textos de imagens atuais
    E recarrego a pagina
    Entao devo verificar se todos os campos de texto das imagens sao diferentes dos textos anteriores

  Cenario: Verificar mudança no conteudo apos clico no botao
    Dado que estou na pagina de dynamic content
    E que eu clico no botao "click here"
    Quando verifico todos os textos de imagens atuais
    E recarrego a pagina
    Entao devo verificar se pelo menos um texto de imagem foi modificado
