class Board

  attr_reader :grid

  def initialize
    @grid = Hash.new
  end

  def place_ship ship, location
    #@grid[location] = ship
    #location :a1   :a1,:a2,:a3
    x = location[0]
    y = location[1].to_i

    y_range = (y..(ship.size)).to_a

    y_range.each do |i|
      xy = (x + i.to_s).to_sym
      grid[xy] = ship
    end




  end

  def location coordinates
    @grid[coordinates]
  end

end
