#language: pt

Funcionalidade: Verificação de imagens quebradas
    @temp
    Cenario: Verificar imagens quebradas na página web

        Dado que acesso a página Broken Images
        Quando verifico se há imagens quebradas
        Então eu não deveria ver imagens quebradas