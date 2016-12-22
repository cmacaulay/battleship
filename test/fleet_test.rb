require './test/test_helper'
require './lib/fleet'

class FleetTest < Minitest::Test
  def test_it_has_a_length
      fleet = Fleet.new(2)
      assert_equal 2, fleet.ship_length
  end

  def test_ships_sink_and_shots_can_miss
    fleet = Fleet.new(3)
    assert_equal 3, fleet.ship_length
    assert_equal 0 , fleet.hit_count

    fleet.hit
    assert_equal 1, fleet.hit_count
    refute fleet.sunk?

    fleet.hit
    fleet.hit
    assert_equal 3, fleet.hit_count
    assert fleet.sunk?
  end
end
