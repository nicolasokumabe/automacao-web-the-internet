Dado("que acesso a página Context Menu") do
  visit "http://the-internet.herokuapp.com/context_menu"
end

Quando("clico com o botão direito do mouse no elemento com id {string}") do |element_id|
  element = find("##{element_id}")
  page.driver.browser.action.context_click(element.native).perform
end

Então("devo ver a mensagem de alerta {string}") do |alert_text|
  expect(page.driver.browser.switch_to.alert.text).to eql(alert_text)
end

E("clico em ok") do
  page.driver.browser.switch_to.alert.accept
end
