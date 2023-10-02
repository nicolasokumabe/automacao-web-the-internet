Entao("devo ver a mensagem Esta pagina nao estah funcionando") do
  # find(".neterror")

  # verificacao da pagina de erro com "css" pelo "style"
  #   expect(page).to have_css('[style="font-family: \"sans\", Arial, sans-serif; font-size: 75%"]')
  # verificacao da pagina de erro com "css" pelo "id"
  #   expect(page).to have_css("#t", text: "Texto desejado")
  # verificacao da pagina de erro com "css" pela "classe"
  # expect(page).to have_css(".neterror")

  # verificacao com content
  element = find('span[jsselect="heading"]')
  expect(element).to have_content("Esta página não está funcionando")

  # verificacao com XPath
  #   expect(page).to have_xpath('//span[@jsselect="heading"][text()="Esta pagina nao estah funcionando"]')

  # verificacao com css
  #   expect(page).to have_css('span[jsselect="heading"]', text: "Esta pagina nao estah funcionando")

end

Entao("devo ver a mensagem Congratulations! You must have the proper credentials.") do
  expect(page).to have_css("p", text: "Congratulations! You must have the proper credentials.")

  # expect(page).to have_xpath('//p[contains(text(), "Congratulations! You must have the proper credentials.")]')

  # caso tivesse um ("{string}") do |message|
  #   success_message = @driver.find_element(xpath: "//div[@id='content']/div[@class='example']/p")
  #   expect(success_message.text).to eq(message)

end
