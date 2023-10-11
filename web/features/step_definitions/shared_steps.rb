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

Quando("clico no link de download do arquivo") do
  click_link "#{ARQUIVO_1}"
end

Entao("o arquivo deve ser baixado com sucesso") do
  # Nada a ser verificado aqui, ja que o Chrome estah configurado para download automatico
end

Entao("devo aguardar o carregamento completo do site {string} na rota {string}") do |site, rota|
  current_url = page.current_url
  expect(current_url).to eq("#{APPHOST}/#{site}#{rota}")

  # Entao("devo ser redirecionado para a pagina {string}") do |expected_url|
  #   expect(current_url).to eq(expected_url)
  # end

end

Entao("devo ser redirecionado para a pagina Sobre") do
  expected_url = "/about/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
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
