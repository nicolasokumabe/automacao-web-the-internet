Quando("eu clico em {string}") do |item|
  menu_item = find("li", text: item)
  menu_item.hover
end

E("entao eu clico em {string}") do |submenu_item|
  click_on(submenu_item)
end

Entao("devo ver a opcao {string}, {string} e {string} no submenu") do |opcao1, opcao2, opcao3|
  expect(page).to have_content(opcao1)
  expect(page).to have_content(opcao2)
  expect(page).to have_content(opcao3)
end
