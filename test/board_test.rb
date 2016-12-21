require './test/test_helper'
require './lib/board'

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
    assert board.print_row_letters(4).nil?

  end





end
#
