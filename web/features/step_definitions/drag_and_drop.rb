Dado("que estou na pagina de Arrastar e Soltar") do
  visit "http://the-internet.herokuapp.com/drag_and_drop"
end

Quando("arrasto o elemento A para o local do elemento B") do
  element_a = find("#column-a")
  element_b = find("#column-b")

  element_a.drag_to(element_b)
end

Entao("devo verificar que o elemento A foi movido com sucesso para o local do elemento B") do
  expect(page).to have_selector("#column-b", text: "A")
end

Quando("arrasto o elemento B para o local do elemento A") do
  element_a = find("#column-a")
  element_b = find("#column-b")

  element_b.drag_to(element_a)
end

Entao("devo verificar que o elemento B foi movido com sucesso para o local do elemento A") do
  expect(page).to have_selector("#column-a", text: "B")
end
