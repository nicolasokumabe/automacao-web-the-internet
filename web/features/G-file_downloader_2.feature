#language: pt

Funcionalidade: Deletar arquivo de file_downloader_1

  Cenário: Deletar img.png
    Dado que eu acesso a pasta Downloads
    Quando eu deleto o arquivo
    Então o arquivo nao deve mais estar na pasta

