#language: pt

Funcionalidade: Teste de Exit Intent

  Cenario: Verificar o funcionamento do Exit Intent
    Dado que acesso a pagina "/exit_intent"
    Quando movo o cursor do mouse para fora da janela do navegador
    Entao deve aparecer o popup