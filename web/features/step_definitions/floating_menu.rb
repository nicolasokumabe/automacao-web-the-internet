Dado("que estou na página de Floating Menu") do
  visit "http://the-internet.herokuapp.com/floating_menu"
end

Quando("eu rolo a página para baixo") do
  # Rola a pagina usando JavaScript para que o menu flutuante seja revelado
  page.execute_script("window.scrollBy(0, 400)")
end

Então("o menu flutuante deve permanecer visível") do
  menu = find("#menu", visible: true, wait: 10)
  expect(menu).to be_visible
end
