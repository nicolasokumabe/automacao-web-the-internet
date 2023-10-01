Dado("que estou na pagina de Frames") do
  visit "http://the-internet.herokuapp.com/frames"
end

Quando("eu entro no iframe") do
  Capybara.default_max_wait_time = 2
  current_url = page.current_url
  expect(current_url).to eq("http://the-internet.herokuapp.com/nested_frames")
end

Entao("o campo de texto deve conter iFrames nao renderizados") do
  expect(page).to have_css("noframes", text: "Frames are not rendering.", visible: false)
end

Quando("eu entro no frame simples") do
  Capybara.default_max_wait_time = 2
  current_url = page.current_url
  expect(current_url).to eq("http://the-internet.herokuapp.com/iframe")

  # within_frame(:xpath, "//iframe[@id='mce_0_ifr']") do
  #   expect(page).to have_content("Frames are not rendering.")
  # end

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
