Dado("que estou na pagina {string}") do |url|
  visit(url)
end

Quando("eu mover o controle deslizante para a posicao {float}") do |posicao|
  slider = find('input[type="range"]').click
  slider.set(posicao)

  #   slider.click
  #   slider.send_keys(:arrow_right, :arrow_right, :arrow_right)
end

Entao("o range deve ser {string}") do |range|
  resultado = find("#range").text
  expect(resultado).to eq(range)
end
