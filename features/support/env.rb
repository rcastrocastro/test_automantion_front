require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'report_builder'

Capybara.run_server = false
Capybara.default_driver = :poltergeist
Capybara.app_host = 'https://www.fleury.com.br'
Capybara.default_max_wait_time = 10

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {
    js_errors: false,
    inspector: true,
    timeout: 1000,
    window_size: [2024,2014],
    phantomjs_options: [
      '--load-images=no',
      '--ignore-ssl-errors=yes',
      '--ssl-protocol=any']})

end

Capybara.configure do |config|
  # config.ignore_hidden_elements = true
  Capybara.default_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist
  require 'site_prism'
end
