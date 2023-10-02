#language: pt

Funcionalidade: Verificacao de Checkboxes
  
  Cenario: Marcar e desmarcar o primeiro checkbox
    Dado que acesso a pagina "http://the-internet.herokuapp.com/checkboxes"
    Quando eu verifico o estado do primeiro checkbox
    E eu marco o primeiro checkbox
    Entao o primeiro checkbox deve estar marcado
    E eu desmarco o primeiro checkbox
    Entao o primeiro checkbox deve estar desmarcado
  
  Cenario: Marcar e desmarcar o segundo checkbox
    Dado que acesso a pagina "http://the-internet.herokuapp.com/checkboxes"
    Quando eu verifico o estado do segundo checkbox
    E eu marco o segundo checkbox
    Entao o segundo checkbox deve estar marcado
    E eu desmarco o segundo checkbox
    Entao o segundo checkbox deve estar desmarcado
  
  Cenario: Marcar o primeiro e o segundo checkboxes
    Dado que acesso a pagina "http://the-internet.herokuapp.com/checkboxes"
    Quando eu verifico o estado do primeiro checkbox
    E eu marco o primeiro checkbox
    E eu verifico o estado do segundo checkbox
    E eu marco o segundo checkbox
    Entao o primeiro checkbox deve estar marcado
    E o segundo checkbox deve estar marcado
  
  Cenario: Marcar o primeiro e desmarcar o segundo checkbox
    Dado que acesso a pagina "http://the-internet.herokuapp.com/checkboxes"
    Quando eu verifico o estado do primeiro checkbox
    E eu marco o primeiro checkbox
    E eu verifico o estado do segundo checkbox
    E eu marco o segundo checkbox
    Entao o primeiro checkbox deve estar marcado
    E eu desmarco o segundo checkbox novamente
    E o segundo checkbox deve estar desmarcado
