module CreateDriver
  def page_driver
    @driver = Selenium::WebDriver.for :firefox
    @driver.manage.window.maximize
  end

  def driver
    @driver
  end

  def launch_selenium_driver
    page_driver
  end
end
