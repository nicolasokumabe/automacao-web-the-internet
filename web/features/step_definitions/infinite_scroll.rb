Quando("eu rolar a pagina para baixo") do
  @element_count = page.all(".jscroll-added").count

  expect(page).to have_css("h3", text: "Infinite Scroll")
  3.times do
    sleep 1
    page.execute_script("window.scrollBy(0, 10000)")
    @element_count = @element_count + 1
  end

  # @element_count = page.all(".jscroll-added").count

  # expect(page).to have_selector(".jscroll-added", count: @element_count)

  # page.execute_script("window.scrollBy(0, 100000)")

  # @element_count = @element_count + 1
  # sleep 1
  # execute_script("window.scrollTo(0, document.body.scrollHeight);")
  # @element_count = @element_count + 1
  # element = page.find(".jscroll-added", count: @element_count, visible: false)

  # expect(element).to be_present
  # sleep 1
  # execute_script("window.scrollTo(0, document.body.scrollHeight);")
  # @element_count = @element_count + 1
  # element = page.find(".jscroll-added", count: @element_count, visible: false)

  # expect(element).to be_present
  # sleep 1
  # execute_script("window.scrollTo(0, document.body.scrollHeight);")
  # @element_count = @element_count + 1
  # element = page.find(".jscroll-added", count: @element_count, visible: false)

  # expect(element).to be_present

  # sleep 1

  # expect(page).to have_selector(".jscroll-added", count: @element_count)

  # page.execute_script("window.scrollBy(0, 10000)")

  # page.has_css?(".jscroll-added", count: @element_count, wait: Capybara.default_max_wait_time)
  # page.execute_script("window.scrollBy(0, 10000)")
  # @element_count = @element_count + 1
  # page.has_css?(".jscroll-added", count: @element_count, wait: Capybara.default_max_wait_time)
end

Entao("devo ver mais elementos carregados") do
  expect(page).to have_selector(".jscroll-added", count: @element_count)
end
