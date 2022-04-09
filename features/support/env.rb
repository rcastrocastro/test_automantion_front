require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'pry'
require 'report_builder'
require 'rspec'
require 'selenium-webdriver'
require 'yaml'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.fleury.com.br'
  config.default_max_wait_time = 10
end
