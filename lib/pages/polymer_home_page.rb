class PolymerHomePage
  def initialize(page_driver)
    @driver = page_driver
  end

  attr_reader :driver

  def go_to_homepage
    driver.navigate.to('https://www.polymer-project.org/1.0/')
  end

  def goto_getstarted
    sleep 10
    get_started = driver.find_element(:xpath, "//*[@href='/1.0/docs/start/getting-the-code.html']")
    get_started.click
  end

  def goto_guide_resources
    guide_resource = driver.find_element(:xpath,"//*[@href='/1.0/docs/devguide/feature-overview.html']")
    guide_resource.click
  end

  def goto_element_catlog
    ele_catlog = driver.find_element(:xpath, "//*[@href='//elements.polymer-project.org']")
    ele_catlog.click
  end

  def goto_blog
    blog = driver.find_element(:xpath,"//*[@href='//blog.polymer-project.org']")
    blog.click
  end


  ## TODO Get started page  ##

  def goto_what_is_polymer
    wip = driver.find_element(:xpath, "//*[@label='What is Polymer?']")
    wip.click
  end

  def goto_quick_tour
    qt = driver.find_element(:xpath, "//*[@class='core-selected' and @label='Get the Polymer library']")
    qt.click
  end


end