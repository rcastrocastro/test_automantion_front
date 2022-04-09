require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "cucumber"
require "capybara/rspec"
require "pry"
require "rspec"
require 'yaml'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.fleury.com.br'
  config.default_max_wait_time = 10
end

Allure.configure do |c|
  c.results_directory = './log/'
  c.clean_results_directory = true
end
