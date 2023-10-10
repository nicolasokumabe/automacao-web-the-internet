#language: pt
@typos

Funcionalidade: Verificação de Typos

  Cenario: Verificar Typos na Pagina
    Dado que acesso a pagina "/typos"
    Quando leio o conteudo da pagina
    Entao devo verificar se nao ha erros gramaticais no texto
