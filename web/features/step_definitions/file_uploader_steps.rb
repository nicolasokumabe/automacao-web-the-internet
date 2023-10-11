Quando("eu selecionar um arquivo para upload") do
  file_path = File.expand_path("~/Downloads/#{ARQUIVO_1}", __FILE__)

  attach_file("file", ARQUIVO_1)
end
