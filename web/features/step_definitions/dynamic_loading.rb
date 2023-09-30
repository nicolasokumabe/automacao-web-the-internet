Dado("que estou na página de Dynamic Loading") do
  @hw = "Hello World!"
  visit "http://the-internet.herokuapp.com/dynamic_loading"
end

Quando("eu clico no botao Example {int}") do |numero|
  # Quando('eu clico no botao Example {float}') do |float|
  click_link "Example #{numero}"
end

Então("devo aguardar o carregamento completo da rota {int}") do |rota|
  Capybara.default_max_wait_time = 2
  current_url = page.current_url
  expect(current_url).to eq("http://the-internet.herokuapp.com/dynamic_loading/#{rota}")
end

Então("clico no botao Start") do
  click_button "Start"

  find("#loading")
  Capybara.default_max_wait_time = 5
  expect(page).to have_css("#finish", visible: true)
end

Então("o elemento oculto deve ser exibido com o texto Hello World!") do
  expect(page).to have_text "#{@hw}"
end

Então("o elemento deve ser adicionado com o texto Hello World!") do
  expect(page).to have_text "#{@hw}"
end
