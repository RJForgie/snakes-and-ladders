require("pry")
require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../dice.rb")
require_relative("../board.rb")

class BoardTest < MiniTest::Test

  def setup
    @player1 = Player.new("Jake")
    @player2 = Player.new("Jaguar")
    # @dice = Dice.new()
    @board1 = Board.new()
  end

  def test_add_player
    @board1.add_player(@player1)
    assert_equal(@player1, @board1.players[0])
  end

  def test_progress_turn
    @board1.progress_turn
    assert_equal(1, @board1.turn)
  end

  def test_players_take_turn
      @board1.add_player(@player1)
      @board1.add_player(@player2)
      @board1.play_turn
        assert_equal(1, @player1.turn_order)
        assert_equal(1, @player2.turn_order)

  end

  # Testing new dice function
  def test_roll
    @board1.roll
    assert(@board1.result.between?(1, 6))
  end

  def test_winner_winner
    @board1.add_player(@player1)
    100.times do @board1.play_turn end
    assert_equal("WINNER IS YOU!", @board1.check_win)
  end


end
