#language: pt
  
Funcionalidade: Testando Desafios no DOM
  
 Cenário: Verificar a página "Challenging DOM"
   Dado que estou na página "http://the-internet.herokuapp.com/challenging_dom"
   Quando eu verifico se estou na página "Challenging DOM"
   Então eu devo ver um exemplo desafiador do DOM

 Cenário: Verificar elementos na página
   Dado que estou na página "http://the-internet.herokuapp.com/challenging_dom"
   Quando eu inspeciono a página em busca de elementos desafiadores
   Então eu devo ver IDs únicos, uma tabela sem localizadores úteis e um elemento canvas

 Cenário: Verificar a tabela
   Quando eu verifico a tabela na página
   Então eu devo ver a tabela com os dados corretos

 Cenário: Verificar o elemento canvas
   Quando eu aciono os botões "qux", "bar" e "foo"
   Então eu devo ver os números no elemento canvas se alterarem corretamente
