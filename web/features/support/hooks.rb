Before do
  Capybara.reset!
  Capybara.current_session.driver.browser.manage.delete_all_cookies
end
