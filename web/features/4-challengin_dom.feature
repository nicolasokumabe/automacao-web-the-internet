#language: pt

Funcionalidade: Validação da Página "Challenging DOM"
  
  Cenário: Verificar título da página
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver o título "Challenging DOM"

  Cenário: Verificar botão "Edit"
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver um botão com o texto edit

  Cenário: Verificar tabela
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver uma tabela com os cabeçalhos "Lorem", "Ipsum", "Dolor", "Sit", "Amet", "Diceret", "Action"

  Cenário: Verificar botões "Delete"
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver pelo menos um botão com o texto delete

  Cenário: Verificar imagem
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver uma imagem

  Cenário: Verificar figura geométrica
    Dado que acesso a página Challenging DOM
    Quando eu visualizo a página Challenging DOM
    Então devo ver uma figura geométrica na página

  Cenário: Verificar botão azul
    Dado que acesso a página Challenging DOM
    Quando eu visualizo o botão azul
    E aperto o botão azul
    Então o id do botão azul deve mudar

  Cenário: Verificar botão vermelho
    Dado que acesso a página Challenging DOM
    Quando eu visualizo o botão vermelho
    E aperto o botão vermelho
    Então o id do botão vermelho deve mudar

  Cenário: Verificar botão verde
    Dado que acesso a página Challenging DOM
    Quando eu visualizo o botão verde
    E aperto o botão verde
    Então o id do botão verde deve mudar
