Quando("eu clicar no botao {string}") do |texto_do_botao|
  click_button(texto_do_botao)
end

Entao("devo ver um alerta com o texto {string}") do |texto_do_alerta|
  expect(page.driver.browser.switch_to.alert.text).to eq(texto_do_alerta)
end

Entao("eu aceito o alerta") do
  page.driver.browser.switch_to.alert.accept
end

Entao("eu rejeito o alerta") do
  page.driver.browser.switch_to.alert.dismiss
end

Entao("eu devo ver o texto do resultado {string}") do |texto_do_resultado|
  expect(page).to have_content(texto_do_resultado)
end

Entao("eu digito {string} no prompt") do |texto|
  page.driver.browser.switch_to.alert.send_keys(texto)
end
