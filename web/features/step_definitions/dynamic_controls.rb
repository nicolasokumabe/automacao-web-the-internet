Quando("eu clico no botao Enable") do
  click_button "Enable"
end

Entao("o campo de entrada deve estar habilitado") do
  find("#loading")
  Capybara.default_max_wait_time = 5
  expect(page).to have_css("p#message", text: "It's enabled!")

  Capybara.default_max_wait_time = 5
  # expect(page).to have_no_css('input[type="text"][disabled]')
  input = find('input[type="text"][style*="width: 30%"]:not([disabled])')
  input.set("pwd123")
end

Entao("eu clico no botao Disable") do
  click_button "Disable"
end

Entao("o campo de entrada deve estar desabilitado") do
  find("#loading")
  Capybara.default_max_wait_time = 5
  expect(page).to have_css("p#message", text: "It's disabled!")

  Capybara.default_max_wait_time = 5
  input = find('input[type="text"]')
  expect(page).to have_css('input[type="text"][disabled]')
end

Quando("eu clico no botao Remove") do
  click_button "Remove"
end

Entao("a caixa de selecao nao deve ser visivel") do
  find("#loading")
  Capybara.default_max_wait_time = 5
  expect(page).to have_css("p#message", text: "It's gone!")

  Capybara.default_max_wait_time = 5
  expect(page).to have_no_selector('input[type="checkbox"]#checkbox')
end

Entao("eu clico no botao Add") do
  click_button "Add"
end

Entao("a caixa de selecao deve ser visivel") do
  find("#loading")
  Capybara.default_max_wait_time = 5
  expect(page).to have_css("p#message", text: "It's back!")

  Capybara.default_max_wait_time = 5
  @checkbox = find('input[type="checkbox"]#checkbox')
  expect(@checkbox).to be_visible
end

Entao("clico em remove selecionando a caixa") do
  @checkbox.check
  click_button "Remove"
end

Entao("vejo a opcao selecionada") do
  expect(page).to have_content("A checkbox")
end
