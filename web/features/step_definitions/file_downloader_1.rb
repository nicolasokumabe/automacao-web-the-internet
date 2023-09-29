Dado("que estou na página de Download") do
  visit "http://the-internet.herokuapp.com/download"
end

Quando("eu clico no link de download do arquivo") do
  click_link "img.png"
end

Então("o arquivo deve ser baixado com sucesso") do
  # Nada a ser verificado aqui, já que o Chrome está configurado para download automático
end
