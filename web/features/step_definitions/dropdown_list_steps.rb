Quando("seleciono a opcao {string}") do |opcao|
  select(opcao, from: "dropdown")
end

Entao("a opcao {string} deve estar selecionada") do |opcao|
  expect(page).to have_select("dropdown", selected: opcao)
end
