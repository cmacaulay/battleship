require 'simplecov'
SimpleCov.start

require './lib/game'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameTest < Minitest::Test

  def test_class_exists_and_variables_are_correct
    game = Game.new

    assert_instance_of Game, game
    assert_equal Game, game.class
    assert_equal 0, game.guesses
    assert_equal Fixnum, game.time_elapsed.class
  end

end
