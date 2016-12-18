require 'simplecov'
SimpleCov.start

require './lib/welcome'
require 'minitest/autorun'
require 'minitest/pride'

class WelcomeTest < Minitest::Test

  def test_welcome_class_exists
    w = Welcome.new
    assert_equal Welcome, w.class
    assert_instance_of Welcome, w
  end

  

end
