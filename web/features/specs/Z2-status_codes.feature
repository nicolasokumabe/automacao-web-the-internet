#language: pt
@status_codes

Funcionalidade: Verificação de Status Codes

  Cenario: Verificar Status Code 200
    Dado que acesso a pagina "/status_codes"
    Quando clico no link "200"
    Entao devo ver o texto "This page returned a 200 status code."

  Cenario: Verificar Status Code 301
    Dado que acesso a pagina "/status_codes"
    Quando clico no link "301"
    Entao devo ver o texto "This page returned a 301 status code."

  Cenario: Verificar Status Code 404
    Dado que acesso a pagina "/status_codes"
    Quando clico no link "404"
    Entao devo ver o texto "This page returned a 404 status code."

  Cenario: Verificar Status Code 500
    Dado que acesso a pagina "/status_codes"
    Quando clico no link "500"
    Entao devo ver o texto "This page returned a 500 status code."
