Given(/^I open the browser$/) do
  include CreateDriver
  launch_selenium_driver
end

When(/^I navigate to polymer home page$/) do
  PolymerHomePage.new(driver).go_to_homepage
end

Then(/^I verify title$/) do
  driver.title.include?("Welcome - Polymer 1.0")
end
