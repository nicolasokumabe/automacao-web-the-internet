Quando("eu insiro o valor {string} no campo de entrada") do |valor|
  @inputs.num.set(valor)
  # find("input[type='number']")
  # fill_in("input[type='number']", with: valor)
end

Quando("eu pressiono a seta para cima") do
  @inputs.num.send_keys(:arrow_up)
end

Entao("o valor {string} deve ser exibido no campo de entrada") do |valor|
  expect(@inputs.num.value).to eq(valor)
end

Quando("eu pressiono a seta para baixo duas vezes") do
  2.times do
    @inputs.num.send_keys(:arrow_down)
  end
end
