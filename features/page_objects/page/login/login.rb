# encoding: utf-8
# language:pt

class LoginPage < SitePrism::Page
  
  element :start_button, '#start > button'
  
  def home
    visit "1"
  end

  def click_start
    start_button.click
  end
end
