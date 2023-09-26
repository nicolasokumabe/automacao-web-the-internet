Dado('que acesso a página Add\/Remove Elements') do
  visit "http://the-internet.herokuapp.com/add_remove_elements/"
end

Quando("clico em Add Element") do
  click_button "Add Element"
end

Então("eh adicionado o elemento") do
  expect(page).to have_selector('button.added-manually[onclick="deleteElement()"]')
end

Quando("clico em Delete") do
  click_button "Add Element"

  button = find('button.added-manually[onclick="deleteElement()"]')
  button.click
end

Então("o elemento adicionado eh removido") do
  expect(page).not_to have_selector("button.added-manually", text: "Delete")
  #   page.has_no_content?("Delete")
end
