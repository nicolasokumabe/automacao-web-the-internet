#language: pt

Funcionalidade: Verificação do Menu de Contexto

  Cenário: Abrir e Verificar o Menu de Contexto
    Dado que acesso a página Context Menu
    Quando clico com o botao direito do mouse no elemento com id "hot-spot"
    Então devo ver a mensagem de alerta "You selected a context menu"
    E clico em ok

