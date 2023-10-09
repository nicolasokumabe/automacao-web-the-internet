#language: pt
@typos

Funcionalidade: Verificação de Typos

  Cenario: Verificar Typos na Página
    Dado que acesso a pagina "http://the-internet.herokuapp.com/typos"
    Quando leio o conteudo da pagina
    Entao devo verificar se nao ha erros gramaticais no texto
