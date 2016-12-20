require './lib/board'
require_relative 'test_helper'

class BoardTest < Minitest::Test

  def test_board_class_exists
    board = Board.new

    assert_equal Board, board.class
    assert_instance_of Board, board
  end

  def test_grid_initializes
    board = Board.new
    grid = board.grid

    assert_equal Array, grid.class
    assert_equal Array, board.print_board.class

    # binding.pry
  end





end
#
