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
  config.app_host = "http://www.inmrobo.tk"
  $baseurl_api = "http://inm-api-test.herokuapp.com/"
end
