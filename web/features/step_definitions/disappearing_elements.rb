Dado("que acesso a página Disappearing Elements") do
  visit "http://the-internet.herokuapp.com/disappearing_elements"
end

Quando("clico no botão Home") do
  click_link("Home")
end

Então("devo ser redirecionado para a página inicial") do
  expect(page).to have_css("h1.heading", text: "Welcome to the-internet")

  expected_url = "http://the-internet.herokuapp.com/"
  expect(page).to have_current_path(expected_url)
end

Quando("clico no botão About") do
  click_link("About")
end

Então("devo ser redirecionado para a página Sobre") do
  expected_url = "http://the-internet.herokuapp.com/about/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end

Quando("clico no botão Contact Us") do
  click_link("Contact Us")
end

Então("devo ser redirecionado para a página Contate-nos") do
  expected_url = "http://the-internet.herokuapp.com/contact-us/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end

Quando("clico no botão Portfolio") do
  click_link("Portfolio")
end

Então("devo ser redirecionado para a página Portfolio") do
  expected_url = "http://the-internet.herokuapp.com/portfolio/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end
