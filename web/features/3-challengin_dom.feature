#language: pt

Funcionalidade: Validação da pagina "Challenging DOM"
  
  Cenario: Verificar titulo da pagina
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo a pagina Challenging DOM
    Entao devo ver o titulo "Challenging DOM"

  Cenario: Verificar botao "Edit"
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo a pagina Challenging DOM
    Entao devo ver um botao com o texto edit

  Cenario: Verificar tabela
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo a pagina Challenging DOM
    Entao devo ver uma tabela com os cabeçalhos "Lorem", "Ipsum", "Dolor", "Sit", "Amet", "Diceret", "Action"

  Cenario: Verificar botões "Delete"
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo a pagina Challenging DOM
    Entao devo ver pelo menos um botao com o texto delete

  Cenario: Verificar imagem
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo a pagina Challenging DOM
    Entao devo ver uma imagem

  Cenario: Verificar figura geometrica
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo a pagina Challenging DOM
    Entao devo ver uma figura geometrica na pagina

  Cenario: Verificar botao azul
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo o botao azul
    E aperto o botao azul
    Entao o id do botao azul deve mudar

  Cenario: Verificar botao vermelho
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo o botao vermelho
    E aperto o botao vermelho
    Entao o id do botao vermelho deve mudar

  Cenario: Verificar botao verde
    Dado que estou na pagina Challenging DOM
    Quando eu visualizo o botao verde
    E aperto o botao verde
    Entao o id do botao verde deve mudar
