#language: pt

Funcionalidade: Verificacao de imagens quebradas
    
  Cenario: Verificar imagens quebradas na pagina web
    Dado que acesso a pagina "/broken_images"
    Quando verifico se ha imagens quebradas
    Entao eu vejo uma ou mais imagens quebradas