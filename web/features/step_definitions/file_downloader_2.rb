Dado("que eu acesso a pasta Downloads") do
  @downloads_directory = File.expand_path("~/Downloads")
end

Quando("eu deleto o arquivo") do
  expect(File).to exist(File.join(@downloads_directory, "aaaa.png"))

  # Deletando o arquivo baixado para nao poluir meu PC

  file1_to_delete = File.expand_path(File.join(@downloads_directory, "aaaa.png"))

  File.delete(file1_to_delete)
end

Entao("o arquivo nao deve mais estar na pasta") do
  # Verifico se o arquivo nao existe na pasta de downloads
  expect(File).not_to exist(File.join(@downloads_directory, "aaaa.png"))
end
