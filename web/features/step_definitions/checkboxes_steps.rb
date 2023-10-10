Quando("eu verifico o estado do primeiro checkbox") do
  @first_checkbox = find('input[type="checkbox"]:first-child')
end

Quando("eu marco o primeiro checkbox") do
  @first_checkbox.check
end

Entao("o primeiro checkbox deve estar marcado") do
  expect(@first_checkbox).to be_checked
end

Entao("eu desmarco o primeiro checkbox") do
  @first_checkbox.uncheck
end

Entao("o primeiro checkbox deve estar desmarcado") do
  expect(@first_checkbox).not_to be_checked
end

Quando("eu verifico o estado do segundo checkbox") do
  @second_checkbox = find('input[type="checkbox"]:nth-child(3)')
end

Quando("eu marco o segundo checkbox") do
  @second_checkbox.check
end

Entao("o segundo checkbox deve estar marcado") do
  expect(@second_checkbox).to be_checked
end

Entao("eu desmarco o segundo checkbox") do
  @second_checkbox.uncheck
end

Entao("o segundo checkbox deve estar desmarcado") do
  expect(@second_checkbox).not_to be_checked
end

Entao("eu desmarco o segundo checkbox novamente") do
  @second_checkbox.uncheck
end
