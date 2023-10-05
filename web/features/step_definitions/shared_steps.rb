Dado("que acesso a pagina {string}") do |url|
  visit(url)
end

Quando("eu clico no botao {string}") do |botao|
  click_button(botao)
  # click_button botao
end

Quando("clico no link {string}") do |link|
  click_link(link)
end

Entao("devo ver a mensagem {string}") do |mensagem|
  expect(page).to have_content(mensagem)
  # expect(page).to have_content mensagem
end

Entao("devo ver o texto {string}") do |texto|
  expect(page).to have_content(texto)

  # within(@figura) do
  #   click_link("View profile")
  # end
end

Quando("informo minhas credenciais validas") do
  system("xdotool type '#{EMAIL}'")

  system("xdotool key Tab")

  system("xdotool type '#{SENHA}'")

  system("xdotool key Tab")

  # visit "http://#{EMAIL}:#{SENHA}@the-internet.herokuapp.com/"basic-ou-digest"_auth"

end

Quando("nao informo minhas credenciais validas") do
  system("xdotool key Tab")

  system("xdotool key Tab")
end

Quando("clico no botao cancelar") do
  system("xdotool key Return")
end

Quando("clico no botao de login") do
  system("xdotool key Tab")

  system("xdotool key Return")
end
