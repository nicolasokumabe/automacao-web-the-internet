#language: pt

Funcionalidade: Verificacao do Menu de Contexto

  Cenario: Abrir e Verificar o Menu de Contexto
    Dado que acesso a pagina "/context_menu"
    Quando clico com o botao direito do mouse no elemento com id "hot-spot"
    Entao devo ver a mensagem de alerta "You selected a context menu"
      E clico em ok

