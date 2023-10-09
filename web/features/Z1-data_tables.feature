#language: pt
@data_tables

Funcionalidade: Verificar Tabelas

  Cenario: Verificar valor em uma celula da tabela
    Dado que acesso a pagina "http://the-internet.herokuapp.com/tables"    
    Quando eu verifico o valor "Smith" na tabela
    Entao eu devo ver o valor na tabela

  Cenario: Verificar numero de linhas em uma tabela
    Dado que acesso a pagina "http://the-internet.herokuapp.com/tables"
    Quando eu conto o numero de linhas na tabela
    Entao o numero de linhas deve ser maior que 1
