Quando("eu rolo a pagina para baixo") do
  # Rola a pagina usando JavaScript para que o menu flutuante seja revelado
  page.execute_script("window.scrollBy(0, 400)")
end

Entao("o menu flutuante deve permanecer visivel") do
  menu = find("#menu", visible: true, wait: 10)
  expect(menu).to be_visible
end
