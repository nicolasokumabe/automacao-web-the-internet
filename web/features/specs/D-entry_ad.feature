#language: pt

Funcionalidade: anuncio Pop-up

  Cenario: Fechar e reabrir o anuncio pop-up 
    Dado que acesso a pagina "/entry_ad"
    Quando eu fecho o anuncio pop-up
    Entao o anuncio pop-up deve estar fechado com sucesso
    E clico no link para abrir o pop up
    E ele aparece novamente