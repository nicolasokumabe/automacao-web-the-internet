Quando("eu mudo para a nova janela") do
  # janelas = page.windows

  # if janelas.size > 1
  #   nova_janela = janelas.last
  #   page.driver.browser.switch_to.window(nova_janela)

  #   expect(page).to have_content("New Window")
  # end
  janelas = page.driver.browser.window_handles

  if janelas.size > 1
    nova_janela = janelas.last

    page.driver.browser.switch_to.window(nova_janela)

    expect(page).to have_title("New Window")
  end
end

Entao("devo fechar a nova janela") do
  # page.driver.browser.close_window

  page.driver.browser.close

  page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
end
