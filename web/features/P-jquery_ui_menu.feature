#language: pt
@jquery_ui_menu

Funcionalidade: Teste de Menu jQuery UI

  Cenario: Navegar pelo menu jQuery UI
    Dado que acesso a pagina "http://the-internet.herokuapp.com/jqueryui/menu"
    Quando eu clico em "Enabled"
    E entao eu clico em "Back to JQuery UI"
    E clico no link "Menu"
    E eu clico em "Enabled"
    E entao eu clico em "Download"
    Entao devo ver a opcao "PDF", "CSV" e "Excel" no submenu



