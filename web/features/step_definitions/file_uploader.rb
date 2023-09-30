Dado("que estou na pagina de upload") do
  visit "http://the-internet.herokuapp.com/upload"
end

Quando("eu selecionar o arquivo {string} para upload") do |file_name|
  file_path = File.expand_path("~/Downloads/#{file_name}", __FILE__)

  attach_file("file", file_path)
end

Entao("devo ver a mensagem {string} na pagina") do |message|
  expect(page).to have_content(message)
end
