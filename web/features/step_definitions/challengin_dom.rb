Dado("que estou na página {string}") do |url|
  visit(url)
end

Quando("eu verifico se estou na página {string}") do |page_title|
  expect(page).to have_title(page_title)
end

Então("eu devo ver um exemplo desafiador do DOM") do
  expect(page).to have_content("Challenging DOM Example")
end

Quando("eu inspeciono a página em busca de elementos desafiadores") do
  # Implemente a lógica de inspeção dos elementos aqui
end

Então("eu devo ver IDs únicos, uma tabela sem localizadores úteis e um elemento canvas") do
  # Implemente as verificações dos elementos específicos aqui
end

Quando("eu verifico a tabela na página") do
  # Implemente a lógica para verificar a tabela
end

Então("eu devo ver a tabela com os dados corretos") do
  # Implemente as verificações dos dados da tabela aqui
end

Quando("eu aciono os botões {string}, {string} e {string}") do |button1, button2, button3|
  # Implemente a lógica para acionar os botões "qux", "bar" e "foo"
end

Então("eu devo ver os números no elemento canvas se alterarem corretamente") do
  # Implemente as verificações dos números no elemento canvas após acionar os botões
end
