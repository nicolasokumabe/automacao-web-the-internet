require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "dotenv/load"
require "digest"
require_relative "login"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
