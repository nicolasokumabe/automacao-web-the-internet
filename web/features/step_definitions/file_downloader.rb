Dado("que estou na página de Download") do
  visit "http://the-internet.herokuapp.com/download"
end

Quando("eu clico no link de download do arquivo") do
  click_link "img.png"
end

Então("o arquivo deve ser baixado com sucesso") do
  # Nada a ser verificado aqui, já que o Chrome está configurado para download automático
end

Então("o arquivo deve existir na pasta de downloads") do
  downloads_directory = File.expand_path("~/Downloads")

  # Deletando o arquivo baixado para não poluir meu PC
  # Verifique se o arquivo existe na pasta de downloads

  expect(File).to exist(File.join(downloads_directory, "img.png"))

  # Deletando o arquivo baixado para não poluir meu PC

  file1_to_delete = File.expand_path(File.join(downloads_directory, "img.png"))

  File.delete(file1_to_delete)
end
