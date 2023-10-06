Dado("que eu acesso a pasta Downloads") do
  @arquivos_para_excluir = ["#{ARQUIVO_1}", "#{ARQUIVO_2}"]

  @downloads_directory = File.expand_path("~/Downloads")
end

Quando("deleto os arquivos desejados") do
  # Deletando o arquivo baixado para nao poluir meu PC

  @arquivos_para_excluir.each do |nome_arquivo|
    expect(File).to exist(File.join(@downloads_directory, nome_arquivo))
    @arquivo_para_excluir = File.expand_path(File.join(downloads_directory, nome_arquivo))

    File.delete(@arquivo_para_excluir)
  end
end

Entao("os arquivos nao devem estar na pasta") do
  # Verifico se o arquivo nao existe na pasta de downloads

  @arquivos_para_excluir.each do |nome_arquivo|
    expect(File).not_to exist(File.join(@downloads_directory, nome_arquivo))
  end
end
