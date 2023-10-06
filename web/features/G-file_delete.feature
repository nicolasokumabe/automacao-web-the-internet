#language: pt

Funcionalidade: Deletar arquivos baixados

  Cenario: Deletar arquivos
    Dado que eu acesso a pasta Downloads
    Quando eu deleto o arquivo
    Entao o arquivo nao deve mais estar na pasta

    # Quando deleto os arquivos desejados
    # Entao so arquivos nao devem estar na pasta