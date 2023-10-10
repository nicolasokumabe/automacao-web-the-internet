#language: pt
@key_presses

Funcionalidade: Teste de Teclas Pressionadas
  Cenario: Verificar a exibição da tecla pressionada
    Dado que acesso a pagina "/key_presses"
    Quando eu pressiono a tecla "A"
    Entao devo ver a mensagem da tecla pressionada como "A"