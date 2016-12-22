require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test

  def test_computer_class_exists
    cp = Computer.new

    assert_equal Computer, cp.class
    assert_instance_of Computer, cp
  end

  def test_first_cell_placement_updates_index
      cp = Computer.new

      assert_nil cp.cell_index[0]
      cp.first_cell_placement(2)
      refute_nil  cp.cell_index[0]
  end

  def test_change_cell_status
    cp    = Computer.new
    board = cp.computer_board

    cp.first_cell_placement(3)
    x = cp.cell_index[0]
    y = cp.cell_index[1]

    assert_equal :open_sea, board[x][y].status
    cp.change_cell_status
    assert_equal :occupied, board[x][y].status
  end

  def test_instance_variables
    cp    = Computer.new
    cp_2  = Computer.new

    assert cp.computer_board != cp_2.computer_board
  end

  def test_computer_can_place_ships
    cp    = Computer.new
    board = cp.computer_board

    cp.first_cell_placement(3)
    cp.change_cell_status
    assert_equal :open_sea, cp.check_if_occupied(2)

    cell  = cp.get_cell

    assert_instance_of Cell, cell
    cp.next_cell_placements(3)

    cp.first_cell_placement(2)
    cp.change_cell_status
    cp.next_cell_placements(2)
  end

  
end
