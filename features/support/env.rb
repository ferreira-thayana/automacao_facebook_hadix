require 'capybara'
require 'capybara/cucumber'
#require 'report_builder'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome #roda no navegador
  config.default_max_wait_time = 10
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.load_selenium
  browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
    opts.args << "--disable-notifications"
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end

