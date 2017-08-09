require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class DiceTest < MiniTest::Test

  def setup
    @dice = Dice.new()

  end

  def test_num_of_sides
    assert_equal(6, @dice.sides)

  end

  def test_weighted_roll
    assert_equal(3, @dice.weighted_roll)
  end

  def test_roll_die
    @dice.roll
    assert(@dice.result.between?(1, 6))
  end



end
