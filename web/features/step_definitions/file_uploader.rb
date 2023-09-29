Dado("que estou na página de upload") do
  visit "http://the-internet.herokuapp.com/upload"
end

Quando("eu selecionar o arquivo {string} para upload") do |file_name|
  file_path = File.expand_path("~/Downloads/#{file_name}", __FILE__)

  attach_file("file", file_path)
end

Quando("eu clicar no botão {string}") do |button_text|
  click_button(button_text)
end

Então("devo ver a mensagem {string} na página") do |message|
  expect(page).to have_content(message)
end
