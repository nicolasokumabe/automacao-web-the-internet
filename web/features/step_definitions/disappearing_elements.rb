Quando("clico no botao Home") do
  click_link("Home")
end

Entao("devo ser redirecionado para a pagina inicial") do
  expect(page).to have_css("h1.heading", text: "Welcome to the-internet")

  expected_url = "http://the-internet.herokuapp.com/"
  expect(page).to have_current_path(expected_url)
end

Quando("clico no botao About") do
  click_link("About")
end

Quando("clico no botao Contact Us") do
  click_link("Contact Us")
end

Entao("devo ser redirecionado para a pagina Contate-nos") do
  expected_url = "http://the-internet.herokuapp.com/contact-us/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end

Quando("clico no botao Portfolio") do
  click_link("Portfolio")
end

Entao("devo ser redirecionado para a pagina Portfolio") do
  expected_url = "http://the-internet.herokuapp.com/portfolio/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end
