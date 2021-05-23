require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'httparty'
require 'site_prism'
require 'pry'
require "faker"


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://the-internet.herokuapp.com/dynamic_loading/"
  $baseurl_api = "https://the-internet.herokuapp.com/dynamic_loading/"
end
