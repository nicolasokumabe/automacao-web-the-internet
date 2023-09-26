Dado("que estou na página de Dynamic Controls") do
  visit "http://the-internet.herokuapp.com/dynamic_controls"
end

Quando("eu clico no botão {string}") do |botao|
  if botao == "Remove"
    execute_script("document.querySelector('button[onclick=\"swapCheckbox()\"]').click()")
  else
    click_button(botao)
  end
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

Então("a caixa de seleção deve ser removida") do
  expect(page).not_to have_selector("#checkbox", visible: true)
end

E("aguardo a caixa de seleção ser removida") do
  expect(page).not_to have_selector("#checkbox", visible: true)
end

Então("a caixa de seleção não deve ser visível") do
  expect(page).not_to have_selector("#checkbox", visible: true)
end

Quando("eu aguardo o botão {string} ficar habilitado") do |botao|
  expect(page).to have_button(botao, disabled: false)
end

E("eu clico no botão {string}") do |botao|
  click_button(botao)
end

Quando("aguardo a caixa de seleção ser adicionada") do
  sleep 3
  expect(page).to have_selector("#checkbox", visible: true)
end

Então("a caixa de seleção deve ser adicionada novamente") do
  expect(page).to have_selector("#checkbox", visible: true)
end
