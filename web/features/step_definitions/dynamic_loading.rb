Dado("que estou na página de Dynamic Loading") do
  visit "http://the-internet.herokuapp.com/dynamic_loading"
end

Quando("eu clico no botão Example 1") do
  click_link "Example 1"
end

Então("devo aguardar o carregamento completo") do
  current_url = page.current_url
  expect(current_url).to eq("http://the-internet.herokuapp.com/dynamic_loading/1")
end

Então("clico no botao Start") do
  click_button "Start"

  expect(page).to have_css("#finish", visible: true)
end

Então("devo ver o texto Hello World! na página") do
  expect(page).to have_text "Hello World!"
end
