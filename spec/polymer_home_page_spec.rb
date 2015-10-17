require "spec_helper"

describe PolymerHomePage do
  let(:polymer_page) {PolymerHomePage.new(driver)}

  before(:each)do
    launch_selenium_driver
  end

  it 'should go to google homepage' do
    polymer_page.go_to_homepage
    driver.title.include?('Welcome - Polymer 1.0')
    driver.close
  end

  it 'should go to google news page' do
    polymer_page.go_to_homepage
    polymer_page.goto_getstarted
    driver.title.include?('Get the Polymer library - Polymer 1.0')
    driver.close
  end
end