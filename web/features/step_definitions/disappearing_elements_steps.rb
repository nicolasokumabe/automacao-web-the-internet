Entao("devo ser redirecionado para a pagina inicial") do
  expect(page).to have_css("h1.heading", text: "Welcome to the-internet")

  expected_url = "/"
  expect(page).to have_current_path(expected_url)
end

Entao("devo ser redirecionado para a pagina Contate-nos") do
  expected_url = "/contact-us/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end

Entao("devo ser redirecionado para a pagina Portfolio") do
  expected_url = "/portfolio/"
  expect(page).to have_current_path(expected_url)

  expect(page).to have_css("h1", text: "Not Found")
end
