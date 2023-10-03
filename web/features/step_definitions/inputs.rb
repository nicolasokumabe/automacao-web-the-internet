Quando("eu insiro o valor {string} no campo de entrada") do |valor|
  input = find("input[type='number']")
  input.set(valor)
  # find("input[type='number']")
  # fill_in("input[type='number']", with: valor)
end

Quando("eu pressiono a seta para cima") do
  input = find("input[type='number']")
  input.send_keys(:arrow_up)
end

Entao("o valor {string} deve ser exibido no campo de entrada") do |valor|
  input = find("input[type='number']")
  expect(input.value).to eq(valor)
end

Quando("eu pressiono a seta para baixo duas vezes") do
  input = find("input[type='number']")
  2.times do
    input.send_keys(:arrow_down)
  end
end
