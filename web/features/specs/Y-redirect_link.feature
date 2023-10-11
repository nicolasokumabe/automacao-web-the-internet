#language: pt
@redirect_link

Funcionalidade: Teste de Redirecionamento

  Cenario: Verificar o redirecionamento para a pagina de codigos de status
    Dado que acesso a pagina "/redirector"
    Quando clico no link "here"
    Entao devo aguardar o carregamento completo do site "status_codes" na rota ""