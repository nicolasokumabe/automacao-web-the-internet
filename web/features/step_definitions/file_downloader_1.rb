Dado("que estou na pagina de Download") do
  visit "http://the-internet.herokuapp.com/download"
end

Quando("eu clico no link de download do arquivo") do
  click_link "img.png"
end

Entao("o arquivo deve ser baixado com sucesso") do
  # Nada a ser verificado aqui, ja que o Chrome estah configurado para download automatico
end
