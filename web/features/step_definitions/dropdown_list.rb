Dado("que estou na página de dropdown") do
  visit "http://the-internet.herokuapp.com/dropdown"
end

Quando("seleciono a opção {string}") do |opcao|
  select(opcao, from: "dropdown")
end

Então("a opção {string} deve estar selecionada") do |opcao|
  expect(page).to have_select("dropdown", selected: opcao)
end
