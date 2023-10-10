Before do
  Capybara.reset!
  Capybara.current_session.driver.browser.manage.delete_all_cookies

  @elements = Elements.new
  @inputs = Inputs.new

  #page.driver.browser.manage.window.maximize
  page.current_window.resize_to(1440, 900)
end
