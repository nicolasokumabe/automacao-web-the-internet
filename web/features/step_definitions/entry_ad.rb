Dado("que estou na página de {string}") do |nome|
  visit "http://the-internet.herokuapp.com/entry_ad"
  expect(page).to have_css("h3", text: nome)
end

Quando("eu fecho o anúncio pop-up") do
  expect(page).to have_css(".modal")

  find("#modal > div.modal > div.modal-footer > p").click
end

Então("o anúncio pop-up deve estar fechado com sucesso") do
  expect(page).to have_no_css(".modal")

  # Ela esta presente, porem nao esta visivel. Isso eh interessante, pois eh um popup.
  expect(page).to have_css(".modal", visible: false)
end
