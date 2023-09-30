Dado("que estou na pagina de dropdown") do
  visit "http://the-internet.herokuapp.com/dropdown"
end

Quando("seleciono a opcao {string}") do |opcao|
  select(opcao, from: "dropdown")
end

Entao("a opcao {string} deve estar selecionada") do |opcao|
  expect(page).to have_select("dropdown", selected: opcao)
end
