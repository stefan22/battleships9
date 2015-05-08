class Board

  attr_reader :grid

  def initialize
    @grid = Hash.new
  end

  def place_ship ship, location
    @grid[location] = ship
  end

  def location coordinates
    @grid[coordinates]
  end

end
