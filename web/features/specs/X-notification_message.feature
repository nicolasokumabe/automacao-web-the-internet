#language: pt
@notification_message

Funcionalidade: Testar Mensagem de Notificação

  Cenario: Verificar se a mensagem de notificação eh exibida corretamente
    Dado que acesso a pagina "/notification_message_rendered"
    Quando clico no link "Click here"
    Entao devo ver uma mensagem de notificação exibida