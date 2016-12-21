require './test/test_helper'

class FleetTest < Minitest::Test 
  def test_it_has_a_length
      fleet = Fleet.new(2)
      assert_equal 2, fleet.length
  end
end
