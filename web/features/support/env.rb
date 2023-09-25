require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "dotenv/load"
require "digest"
require "rest-client"
require_relative "login"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

Before do
  Capybara.current_session.driver.browser.manage.delete_all_cookies
end
