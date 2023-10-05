Quando("eu pressiono a tecla {string}") do |tecla|
  find("#target").send_keys(tecla)
end

Então("devo ver a mensagem da tecla pressionada como {string}") do |tecla|
  expect(find("#result").text).to eq("You entered: #{tecla}")
end
