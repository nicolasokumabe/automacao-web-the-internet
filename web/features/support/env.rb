require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "dotenv/load"
require "digest"
require "rest-client"
require_relative "login"
require_relative "hooks"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
