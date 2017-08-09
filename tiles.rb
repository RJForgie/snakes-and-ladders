class Tiles

  attr_reader(:number, :type)
  attr_writer(:number, :type)

  def initialize(number, type)
    @number = number
    @type = type
  end

  def snake_down
    if @player1.position == @number
      @player1.position - 5
    end
  end



end
