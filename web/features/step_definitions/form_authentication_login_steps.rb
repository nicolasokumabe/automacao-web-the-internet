Quando("eu preencho o campo {string} com email valido") do |campo|
  fill_in campo, with: "#{EMAIL2}"
end

Quando("eu preencho o campo {string} com senha valida") do |campo|
  fill_in campo, with: "#{SENHA2}"
end

Entao("devo ser redirecionado para a pagina de sucesso") do
  current_url = page.current_url
  expect(current_url).to eq("/secure")
  #   expect(page).to have_current_path("/secure")

  expect(page).to have_css("h2", text: "Secure Area")
  #   expect(page).to have_content("Secure Area")
end

Quando("eu preencho o campo {string} com email invalido") do |campo|
  fill_in campo, with: "#{EMAIL3}"
end

Quando("eu preencho o campo {string} com senha invalida") do |campo|
  fill_in campo, with: "#{SENHA3}"
end

Entao("volto para a area de login") do
  current_url = page.current_url
  expect(current_url).to eq("/login")
  #   expect(page).to have_current_path("/login")
end
