Dado("que acesso a página Checkboxes") do
  visit "http://the-internet.herokuapp.com/checkboxes"
end

Quando("eu verifico o estado do primeiro checkbox") do
  @first_checkbox = find('input[type="checkbox"]:first-child')
end

Quando("eu marco o primeiro checkbox") do
  @first_checkbox.check
end

Então("o primeiro checkbox deve estar marcado") do
  expect(@first_checkbox).to be_checked
end

Então("eu desmarco o primeiro checkbox") do
  @first_checkbox.uncheck
end

Então("o primeiro checkbox deve estar desmarcado") do
  expect(@first_checkbox).not_to be_checked
end

Quando("eu verifico o estado do segundo checkbox") do
  @second_checkbox = find('input[type="checkbox"]:nth-child(3)')
end

Quando("eu marco o segundo checkbox") do
  @second_checkbox.check
end

Então("o segundo checkbox deve estar marcado") do
  expect(@second_checkbox).to be_checked
end

Então("eu desmarco o segundo checkbox") do
  @second_checkbox.uncheck
end

Então("o segundo checkbox deve estar desmarcado") do
  expect(@second_checkbox).not_to be_checked
end

Então("eu desmarco o segundo checkbox novamente") do
  @second_checkbox.uncheck
end
