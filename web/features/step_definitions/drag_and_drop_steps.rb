Quando("arrasto o elemento A para o local do elemento B") do
  @elements.a.drag_to(@elements.b)
end

Entao("devo verificar que o elemento A foi movido com sucesso para o local do elemento B") do
  expect(page).to have_selector("#column-b", text: "A")
end

Quando("arrasto o elemento B para o local do elemento A") do
  @elements.b.drag_to(@elements.a)
end

Entao("devo verificar que o elemento B foi movido com sucesso para o local do elemento A") do
  expect(page).to have_selector("#column-a", text: "B")
end
