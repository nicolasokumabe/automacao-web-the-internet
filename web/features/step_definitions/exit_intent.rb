Quando("movo o cursor do mouse para fora da janela do navegador") do
  expect(page).to have_css("h3", text: "Exit Intent")

  # O movimento do ponteiro do mouse eh feito pelo JS
  # page.execute_script("window.scrollBy(0,500)")
  # page.execute_script("window.scrollTo(0, 0)")
  # page.driver.browser.action.move_to(page.driver.browser.find_element(css: "body"), 0, 0).perform
  # page.execute_script("$(window).trigger('mouseout')")
  # page.execute_script("window.scrollBy(0, -10000)")

  system("xdotool mousemove 10000 10000")
  system("xdotool mousemove 700 400")
  system("xdotool mousemove 0 0")
end

Entao("deve aparecer o popup") do
  find("#ouibounce-modal", visible: true)

  expect(page).to have_css("#ouibounce-modal", visible: true)
end
