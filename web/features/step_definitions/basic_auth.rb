Dado("que acesso a pagina Basic Auth") do
  visit "http://the-internet.herokuapp.com/basic_auth"
end

Então("recebo a mensagem Not authorized") do
  expect(page).to have_css("body", text: "Not authorized")
  # expect(page).to have_xpath('//body[contains(text(), "Not authorized")]')
end

Então("sou redirecionado para o Dashboard") do
  expect(page).to have_css("h3", text: "Basic Auth")
  # expect(page).to have_xpath('//h3[contains(text(), "Basic Auth")]')
end

Então("recebo a mensagem Congratulations! You must have the proper credentials.") do
  expect(page).to have_css("p", text: "Congratulations! You must have the proper credentials.")
  # expect(page).to have_xpath('//p[contains(text(), "Congratulations! You must have the proper credentials.")]')
end
