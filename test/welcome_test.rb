require './test/test_helper'
require './lib/welcome'

class WelcomeTest < Minitest::Test

  def test_welcome_class_exists
    w = Welcome.new

    assert_equal Welcome, w.class
    assert_instance_of Welcome, w
  end

  def test_welcome_message_plays
    w = Welcome.new
    expected =  "\e[H\e[2J
     \nWELCOME TO BATTLESHIP!\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n"


    assert_equal expected, w.start_message
    w.print_start_message
  end

  def test_player_input_responds_to_methods
    w = Welcome.new
    assert_respond_to w, :play_game
    assert_respond_to w, :show_instructions
    assert_respond_to w, :quit
  end

end
