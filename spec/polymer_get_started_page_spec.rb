require "spec_helper"

describe PolymerHomePage do
  let(:polymer_page) {PolymerHomePage.new(driver)}

  before(:each)do
    launch_selenium_driver
  end

  it 'should navigate to "What is polymer"' do
    polymer_page.go_to_homepage
    polymer_page.goto_getstarted
    polymer_page.goto_what_is_polymer
    driver.title.include?("What is Polymer? - Polymer 1.0")
    driver.close
  end

  it 'should navigate to quick tour of   polymer' do
    polymer_page.go_to_homepage
    polymer_page.goto_getstarted
    polymer_page.goto_quick_tour
    driver.title.include?("Quick tour of Polymer - Polymer 1.0")
    driver.close
  end
end