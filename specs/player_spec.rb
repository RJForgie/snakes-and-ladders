require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../dice.rb")

class PlayerTest < Minitest::Test

  def setup
    @player1 = Player.new("Jake")
    @dice = Dice.new()
  end

  def test_player_name
    assert_equal("Jake", @player1.name)
  end

  def test_player_can_move__fixed
    @player1.fixed_move
    assert_equal(3, @player1.position)
  end

  def test_player_can_move__random
    @player1.random_move
    assert(@player1.position.between?(1, 6))
  end

  def test_player_takes_turn
    @player1.takes_turn(@dice)
    assert(@player1.position.between?(1, 6))
  end


end
