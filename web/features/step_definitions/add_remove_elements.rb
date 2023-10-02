Quando("clico em Add Element") do
  click_button "Add Element"
end

Entao("eh adicionado o elemento") do
  expect(page).to have_selector('button.added-manually[onclick="deleteElement()"]')
end

Quando("clico em Delete") do
  click_button "Add Element"

  button = find('button.added-manually[onclick="deleteElement()"]')
  button.click
end

Entao("o elemento adicionado eh removido") do
  expect(page).not_to have_selector("button.added-manually", text: "Delete")
  #   page.has_no_content?("Delete")
end
