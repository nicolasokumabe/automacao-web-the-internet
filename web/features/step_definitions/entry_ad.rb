Quando("eu fecho o anuncio pop-up") do
  expect(page).to have_css("h3", text: "Entry Ad")

  expect(page).to have_css(".modal")

  find("#modal > div.modal > div.modal-footer > p").click
end

Entao("o anuncio pop-up deve estar fechado com sucesso") do
  Capybara.default_max_wait_time = 5
  expect(page).to have_no_css(".modal")
  Capybara.default_max_wait_time = 5
  # Ela esta presente, porem nao esta visivel. Isso eh interessante, pois eh um popup.
  expect(page).to have_css(".modal", visible: false)
end

Entao("clico no link para abrir o pop up") do
  # click_link "#restart-ad"
  click_link "click here"
end

Entao("ele aparece novamente") do
  Capybara.default_max_wait_time = 5
  expect(page).to have_css(".modal")
  expect(page).to have_css(".modal", visible: true)
end
