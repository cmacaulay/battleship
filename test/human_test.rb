require './test/test_helper'
require './lib/human'

class HumanTest < Minitest::Test

  def test_class_exists
    human = Human.new

    assert_equal Human, human.class
    assert_instance_of Human, human
  end

  def test_ship_placement_instructions
    human = Human.new

    refute_nil human.ship_placement_instructions(44)
  end

  def test_ship_placement_sequence
    human = Human.new

    human.ship_placement_sequence(3)
    

  end

end
