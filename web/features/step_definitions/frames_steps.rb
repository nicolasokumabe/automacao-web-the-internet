Entao("o campo de texto deve conter iFrames nao renderizados") do
  expect(page).to have_css("noframes", text: "Frames are not rendering.", visible: false)
end

Quando("eu digito {string} no campo de texto do frame simples") do |texto|
  # within_frame("mce_0_ifr") do
  #   find("#tinymce").set(texto)
  # end

  within_frame(:xpath, "//iframe[@id='mce_0_ifr']") do
    find("#tinymce").set(texto)
  end
end

Entao("o campo de texto do frame simples deve conter {string}") do |texto|
  # within_frame("mce_0_ifr") do
  #   expect(find("#tinymce").value).to eq(texto)
  # end

  within_frame(:xpath, "//iframe[@id='mce_0_ifr']") do
    expect(page).to have_css("p", text: texto, visible: true)

    # expect(find("#tinymce").value).to eq(texto)
  end
end

Quando("eu mudo o formato do texto") do
  click_button("Format")
  find("div.tox-collection__item-label", text: "Formats").click
  find("div.tox-collection__item-label", text: "Headings").click
  find('div[title="Heading 1"]').select_option
end

Entao("o campo de texto do frame simples deve mudar de formato") do
  # within('div[title="Heading 1"]') do
  #   expect(page).to have_css('[aria-checked="true"]')
  # end
  click_button("Format")
  find("div.tox-collection__item-label", text: "Formats").click
  find("div.tox-collection__item-label", text: "Headings").click
  find("div[title='Heading 1'][aria-checked='true']")
end
