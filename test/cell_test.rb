require './test/test_helper'
require './lib/cell'

class CellTest < Minitest::Test

    def test_cell_class_exists
      cell = Cell.new

      assert_equal Cell, cell.class
      assert_instance_of Cell, cell
    end

    def test_cell_initializes_correctly
      cell = Cell.new

      assert_equal :open_sea, cell.status
      assert_equal :empty, cell.ship
    end

    def test_status_changes_when_supposed_to
      cell = Cell.new

      assert_equal :open_sea, cell.status
      assert_equal :empty, cell.ship

      cell.hit
      assert_equal :hit, cell.status && cell.ship

      cell.miss
      assert_equal :miss, cell.status

      cell.ships_ahoy
      assert_equal :ship, cell.ship
      assert_equal :occupied, cell.status
    end

    def test_board_cell_updates_when_status_changes
      cell = Cell.new

      assert_equal :open_sea, cell.status
      assert_equal :empty, cell.ship
      assert_equal ".", cell.update_board_cell

      cell.miss
      assert_equal "M", cell.update_board_cell

      cell.hit
      assert_equal "H", cell.update_board_cell

      cell.ships_ahoy
      assert_equal "X", cell.update_board_cell

    end
end
