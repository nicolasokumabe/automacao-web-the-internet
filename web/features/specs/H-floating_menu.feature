#language: pt

Funcionalidade: Verificar o menu flutuante

  Cenario: Menu flutuante permanece visivel ao rolar a pagina
    Dado que acesso a pagina "/floating_menu"
    Quando eu rolo a pagina para baixo
    Entao o menu flutuante deve permanecer visivel