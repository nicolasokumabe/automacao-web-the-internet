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

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://the-internet.herokuapp.com"
  config.default_max_wait_time = 10
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
