require("pry")
class Board

  attr_reader(:squares, :players, :turn, :result)
  attr_writer(:players, :turn, :result)

  def initialize()
    @squares = (1..100).to_a
    @players = []
    @turn = 0
    @result = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def progress_turn
  @turn += 1
  end

  def roll
    @result = 1 + rand(6)
  end

  def play_turn
    progress_turn
    for player in @players do
      player.takes_turn
    end
  end

  def check_win
    for player in players
      puts @squares.last
    if player.position == @squares.last
      return "WINNER IS YOU!"
    else
      return "Keep playing"
    end
    end
  end


end
