Dado("que estou na página de Dynamic Controls") do
  visit "http://the-internet.herokuapp.com/dynamic_controls"
end

Quando("eu clico no botão {string}") do |botao|
  click_button(botao)
  page.has_no_button?(botao) # Aguarda até que o botão não esteja mais presente
end

Então("o campo de entrada deve estar habilitado") do
  campo = find("#input-example input")
  expect(campo).to be_visible
end

Então("o campo de entrada deve estar desabilitado") do
  campo = find("#input-example input")
  expect(campo).to be_visible
  expect(campo).to be_disabled
end
