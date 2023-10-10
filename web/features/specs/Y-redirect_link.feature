#language: pt
@redirect_link

Funcionalidade: Teste de Redirecionamento

  Cenario: Verificar o redirecionamento para a pagina de codigos de status
    Dado que acesso a pagina "/redirector"
    Quando clico no link "here"
    Entao devo ser redirecionado para a pagina "/status_codes"
