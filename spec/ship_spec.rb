require 'ship'

describe Ship do

  it 'has a given size passed to it' do
    ship = Ship.new 3
    expect(ship.size).to eq 3

  end


end
