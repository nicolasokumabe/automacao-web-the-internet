Quando("eu verifico o valor {string} na tabela") do |valor|
  expect(page).to have_content(valor)
end

Entao("eu devo ver o valor na tabela") do
  # A verificação já foi feita no passo anterior
end

Quando("eu conto o numero de linhas na tabela") do
  @num_linhas = page.all("table#table1 tbody tr").count
end

Entao("o numero de linhas deve ser maior que {int}") do |numero|
  expect(@num_linhas).to be > numero
end
