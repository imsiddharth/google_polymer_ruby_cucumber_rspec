require File.dirname(__FILE__) + "/driver/launch_driver"
include CreateDriver

require 'yaml'
require 'rspec'
require "selenium-webdriver"

require 'cucumber'

require 'rake'

include RSpec::Matchers

require File.dirname(__FILE__) + "/pages/polymer_home_page"
