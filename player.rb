class Player

  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost_a_life
    @lives -= 1
  end

end