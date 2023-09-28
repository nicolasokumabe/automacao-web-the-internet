#language: pt

Funcionalidade: Anúncio Pop-up

  Cenário: Fechar e reabrir o anúncio pop-up 
    Dado que estou na página de "Entry Ad"
    Quando eu fecho o anúncio pop-up
    Então o anúncio pop-up deve estar fechado com sucesso
    E clico no link para abrir o pop up
    E ele aparece novamente