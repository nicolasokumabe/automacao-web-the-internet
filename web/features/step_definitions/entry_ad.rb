Dado("que estou na página de {string}") do |nome|
  visit "http://the-internet.herokuapp.com/entry_ad"
  expect(page).to have_css("h3", text: nome)
end

Quando("eu fecho o anúncio pop-up") do
  expect(page).to have_css(".modal")

  find("#modal > div.modal > div.modal-footer > p").click
end

Então("o anúncio pop-up deve estar fechado com sucesso") do
  Capybara.default_max_wait_time = 5
  expect(page).to have_no_css(".modal")
  Capybara.default_max_wait_time = 5
  # Ela esta presente, porem nao esta visivel. Isso eh interessante, pois eh um popup.
  expect(page).to have_css(".modal", visible: false)
end

Então("clico no link para abrir o pop up") do
  # click_link "#restart-ad"
  click_link "click here"
end

Então("ele aparece novamente") do
  Capybara.default_max_wait_time = 5
  expect(page).to have_css(".modal")
  expect(page).to have_css(".modal", visible: true)
end
