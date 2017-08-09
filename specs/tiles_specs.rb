require("pry")
require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../dice.rb")
require_relative("../board.rb")
require_relative("../tiles.rb")

class TilesTest < MiniTest::Test

  def setup
    @player1 = Player.new("Jake")
    @player2 = Player.new("Jaguar")
    @board1 = Board.new()
    @snake = Tiles.new(10, :snake)
    @ladder = Tiles.new(20, :ladder)
  end

  def test_tile_type__ladder
    assert_equal(:ladder, @ladder.type)
  end

  def test_tile_type__snake
    assert_equal(:snake, @snake.type)
  end

  def test_snake_down
    @board1.add_player(@player1)
    10.times do @board1.play_turn end
    
    assert_equal(5, @player.position)
  end

end
