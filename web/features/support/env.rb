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

# No arquivo de suporte do Cucumber (exemplo: env.rb), adicione o seguinte código:

# Crie um objeto para armazenar variáveis de contexto
class MyWorld
  attr_accessor :valores_anteriores_src

  def initialize
    # Inicialize a variável de contexto
    @valores_anteriores_src = []
  end
end

World { MyWorld.new }
