require './test/test_helper'
require './lib/cell'

class CellTest < Minitest::Test

    def test_cell_class_exists
      cell = Cell.new

      assert_equal Cell, cell.class
      assert_instance_of Cell, cell
    end

end
