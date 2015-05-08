require 'board'

describe Board do

  it { is_expected.to respond_to(:place_ship).with(2).arguments }

  it { is_expected.to respond_to(:location).with(1).argument }

  it 'location should be equal to its size' do
    ship = Ship.new 3
    subject.place_ship(ship,:a1)
    expect(subject.location(:a1)).to eq(ship)
    expect(subject.location(:a2)).to eq(ship)
    expect(subject.location(:a3)).to eq(ship)
  end

end
