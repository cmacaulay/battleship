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

  def test_welcome_message_plays
    w = Welcome.new
# binding.pry
    assert_nil w.start_message
  end

  def test_player_input_responds_to_methods
    w = Welcome.new

    assert_respond_to w, :play_game
    assert_respond_to w, :show_instructions
    assert_respond_to w, :quit
  end
end
