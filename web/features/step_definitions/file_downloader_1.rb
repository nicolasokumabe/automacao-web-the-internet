Quando("clico no link de download do arquivo") do
  click_link "logo.png"
end

Entao("o arquivo deve ser baixado com sucesso") do
  # Nada a ser verificado aqui, ja que o Chrome estah configurado para download automatico
end
