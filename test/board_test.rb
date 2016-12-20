require './lib/board'
require_relative 'test_helper'

class BoardTest < Minitest::Test

  def test_board_class_exists
    board = Board.new

    assert_equal Board, board.class
    assert_instance_of Board, board
  end

  def test_basic_board_components_exist
    board = Board.new

    assert_equal Array, board.board_layout.class
    assert_equal String, board.row_label.class
    assert_equal Array, board.column_label.class

    assert_equal 4, board.board_layout.count
    assert_equal 7, board.row_label.length
    assert_equal 4, board.column_label.count
  end



end
#
