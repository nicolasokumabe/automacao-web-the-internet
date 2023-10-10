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
end

class MyWorld
  attr_accessor :valores_anteriores_src

  def initialize
    # Inicialize a variável de contexto
    @valores_anteriores_src = []
  end
end

World { MyWorld.new }
