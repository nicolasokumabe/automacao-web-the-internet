#language: pt

Funcionalidade: Verificação de Checkboxes
  
  Cenário: Marcar e desmarcar o primeiro checkbox
    Dado que acesso a página Checkboxes
    Quando eu verifico o estado do primeiro checkbox
    E eu marco o primeiro checkbox
    Então o primeiro checkbox deve estar marcado
    E eu desmarco o primeiro checkbox
    Então o primeiro checkbox deve estar desmarcado
  
  Cenário: Marcar e desmarcar o segundo checkbox
    Dado que acesso a página Checkboxes
    Quando eu verifico o estado do segundo checkbox
    E eu marco o segundo checkbox
    Então o segundo checkbox deve estar marcado
    E eu desmarco o segundo checkbox
    Então o segundo checkbox deve estar desmarcado
  
  Cenário: Marcar o primeiro e o segundo checkboxes
    Dado que acesso a página Checkboxes
    Quando eu verifico o estado do primeiro checkbox
    E eu marco o primeiro checkbox
    E eu verifico o estado do segundo checkbox
    E eu marco o segundo checkbox
    Então o primeiro checkbox deve estar marcado
    E o segundo checkbox deve estar marcado
  
  Cenário: Marcar o primeiro e desmarcar o segundo checkbox
    Dado que acesso a página Checkboxes
    Quando eu verifico o estado do primeiro checkbox
    E eu marco o primeiro checkbox
    E eu verifico o estado do segundo checkbox
    E eu marco o segundo checkbox
    Então o primeiro checkbox deve estar marcado
    E eu desmarco o segundo checkbox novamente
    E o segundo checkbox deve estar desmarcado
