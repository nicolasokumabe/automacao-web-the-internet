Dado("que eu acesso a pasta Downloads") do
  @downloads_directory = File.expand_path("~/Downloads")
end

Quando("eu deleto o arquivo") do
  expect(File).to exist(File.join(@downloads_directory, "img.png"))

  # Deletando o arquivo baixado para não poluir meu PC

  file1_to_delete = File.expand_path(File.join(@downloads_directory, "img.png"))

  File.delete(file1_to_delete)
end

Então("o arquivo nao deve mais estar na pasta") do
  # Verifico se o arquivo não existe na pasta de downloads
  expect(File).not_to exist(File.join(@downloads_directory, "img.png"))
end
