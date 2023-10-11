require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "dotenv/load"
require "digest"
require "rest-client"
require "fileutils"
require "language_tool"
require_relative "login"
require_relative "downloads"
require_relative "hooks"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

# BROWSER = ENV["BROWSER"]

# if BROWSER == "firefox"
#   @driver = :selenium
# elsif BROWSER == "fire_headless"
#   @driver = :selenium_headless
# elsif BROWSER == "chrome"
#   @driver = :selenium_chrome
# elsif BROWSER == "chrome_headless"
#   @driver = :selenium_chrome_headless
# end

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "fire_headless"
  @driver = :selenium_headless
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Navegador incorreto, variável @driver está vazia :("
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 5
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end

class MyWorld
  attr_accessor :valores_anteriores_src

  def initialize
    # Inicialize a variável de contexto
    @valores_anteriores_src = []
  end
end

World { MyWorld.new }
