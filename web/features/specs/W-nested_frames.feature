#language: pt
@nested_frames

Funcionalidade: Testar Nested Frames

  Cenario: Verificar o conteudo do frame superior do meio
    Dado que acesso a pagina "/nested_frames"
    Quando eu verificar o conteudo do frame superior do meio
    Entao devo ver o texto do frame "MIDDLE"

  Cenario: Verificar o conteudo do frame superior esquerdo
    Dado que acesso a pagina "/nested_frames"
    Quando devo verificar o conteúdo do frame superior esquerdo
    Entao devo ver o texto do frame "LEFT"

  Cenario: Verificar o conteudo do frame superior direito
    Dado que acesso a pagina "/nested_frames"
    Quando devo verificar o conteudo do frame superior direito
    Entao devo ver o texto do frame "RIGHT"

  Cenario: Verificar o conteudo do frame inferior
    Dado que acesso a pagina "/nested_frames"
    Quando devo verificar o conteudo do frame inferior
    Entao devo ver o texto do frame "BOTTOM"
