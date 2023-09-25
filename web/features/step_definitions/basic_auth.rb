Dado("que acesso a pagina Basic Auth") do
  visit "http://the-internet.herokuapp.com/basic_auth"
  # visit "http://#{EMAIL}:#{SENHA}@the-internet.herokuapp.com/basic_auth"
end

Quando("não submeto o meu login completo") do
  system("xdotool key Tab")
  system("xdotool key Tab")
end

Quando("submeto o meu login completo") do
  system("xdotool type '#{EMAIL}'")
  system("xdotool key Tab")
  system("xdotool type '#{SENHA}'")
  system("xdotool key Tab")
end

Quando("clico em login") do
  system("xdotool key Tab")
  system("xdotool key Return")
end

Então("sou redirecionado para o Dashboard") do
  expect(page).to have_css("h3", text: "Basic Auth")
  # expect(page).to have_xpath('//h3[contains(text(), "Basic Auth")]')
end

Então("recebo a mensagem Congratulations! You must have the proper credentials.") do
  expect(page).to have_css("p", text: "Congratulations! You must have the proper credentials.")
  # expect(page).to have_xpath('//p[contains(text(), "Congratulations! You must have the proper credentials.")]')
end
