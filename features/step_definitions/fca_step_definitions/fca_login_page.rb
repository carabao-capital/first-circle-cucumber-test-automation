require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
Given("Customer loads FCA login page") do
    driver.get "https://preprod.my.firstcircle.ph/login"
end
  
When("Customer submits valid login credentials") do
    email_field = driver.find_element(id: "user_login")
    password_field = driver.find_element(id: "user_password")
    login_button = driver.find_element(css: "button[type='submit']")
    email_field.send_keys "no_progress1@firstcircle.com"
    password_field.send_keys "hello123"
    login_button.click
end
  
Then("Customer should be successfully logged in FCA") do
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { driver.find_element(css: "a.ds-btn")}
    driver.quit
end
  

