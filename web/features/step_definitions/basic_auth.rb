Dado("que acesso a página Basic Auth") do
  visit "http://#{EMAIL}:#{SENHA}@the-internet.herokuapp.com/basic_auth"
end

Quando("submeto o meu login completo") do
  # Foi submetido na url
end

Então("sou redirecionado para o Dashboard") do
  expect(page).to have_css("p", text: "Congratulations! You must have the proper credentials.")
  # expect(page).to have_xpath('//p[contains(text(), "Congratulations! You must have the proper credentials.")]')
end
