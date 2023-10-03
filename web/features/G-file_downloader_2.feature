#language: pt

Funcionalidade: Deletar arquivo de file_downloader_1

  Cenario: Deletar aaaa.png
    Dado que eu acesso a pasta Downloads
    Quando eu deleto o arquivo
    Entao o arquivo nao deve mais estar na pasta

