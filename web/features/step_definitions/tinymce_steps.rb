Quando("eu troco para o iframe") do
  page.within_frame("mce_0_ifr") do
  end
end

Quando("eu limpo o conteudo") do
  page.within_frame("mce_0_ifr") do
    find("#tinymce").set("")
  end
end

Quando("eu insiro {string} no editor") do |texto|
  page.within_frame("mce_0_ifr") do
    find("#tinymce").set(texto)
  end
end

Quando("eu volto para o conteudo principal") do
  page.driver.browser.switch_to.default_content
end

Entao("eu devo ver {string}") do |texto|
  within_frame(:xpath, "//iframe[@id='mce_0_ifr']") do
    expect(page).to have_content(texto)
  end
end
