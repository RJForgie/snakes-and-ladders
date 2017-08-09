require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../dice.rb")
require_relative("../board.rb")

class BoardTest < MiniTest::Test

  def setup
    @player1 = Player.new("Jake")
    @dice = Dice.new()
    @board1 = Board.new()
  end

  def test_add_player
    @board1.add_player(@player1)
    assert_equal(@player1, @board1.players[0])
  end

end
