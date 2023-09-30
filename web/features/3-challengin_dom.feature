#language: pt

Funcionalidade: Validação da Página "Challenging DOM"
  
  Cenário: Verificar título da página
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver o título "Challenging DOM"

  Cenário: Verificar botao "Edit"
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver um botao com o texto edit

  Cenário: Verificar tabela
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver uma tabela com os cabeçalhos "Lorem", "Ipsum", "Dolor", "Sit", "Amet", "Diceret", "Action"

  Cenário: Verificar botões "Delete"
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver pelo menos um botao com o texto delete

  Cenário: Verificar imagem
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver uma imagem

  Cenário: Verificar figura geométrica
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver uma figura geométrica na página

  Cenário: Verificar botao azul
    Dado que acesso a página Challenging DOM
    Quando eu visualizo o botao azul
    E aperto o botao azul
    Então o id do botao azul deve mudar

  Cenário: Verificar botao vermelho
    Dado que acesso a página Challenging DOM
    Quando eu visualizo o botao vermelho
    E aperto o botao vermelho
    Então o id do botao vermelho deve mudar

  Cenário: Verificar botao verde
    Dado que acesso a página Challenging DOM
    Quando eu visualizo o botao verde
    E aperto o botao verde
    Então o id do botao verde deve mudar
