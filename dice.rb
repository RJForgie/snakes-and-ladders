class Dice

  attr_reader(:sides, :result)
  attr_writer(:result)

  def initialize
    @sides = 6
    @result = 0
  end

  def roll
    @result = 1 + rand(@sides)
  end

  def weighted_roll
    return 3
  end

end
