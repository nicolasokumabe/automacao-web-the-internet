Quando("eu clico no botao Example {int}") do |numero|
  @hw = "Hello World!"

  # Quando('eu clico no botao Example {float}') do |float|
  click_link "Example #{numero}"
end

Entao("clico no botao Start") do
  click_button "Start"

  find("#loading")
  Capybara.default_max_wait_time = 5
  expect(page).to have_css("#finish", visible: true)
end

Entao("o elemento oculto deve ser exibido com o texto Hello World!") do
  expect(page).to have_text "#{@hw}"
end

Entao("o elemento deve ser adicionado com o texto Hello World!") do
  expect(page).to have_text "#{@hw}"
end
