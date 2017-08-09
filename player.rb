require_relative("dice.rb")

class Player

  attr_reader(:name, :position, :turn_order)
  attr_writer(:name, :position, :turn_order)

  def initialize(name)
    @name = name
    @position = 0
    @turn_order = 0
  end

  def fixed_move
    @position += 3
  end

  def random_move
    @position = 1 + rand(6)
  end

  def takes_turn()
    # dice.roll
    @position += 1
    @turn_order += 1
  end

  

end
