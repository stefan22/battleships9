require 'capybara/rspec'

feature 'player preparing for game' do
  scenario 'place a ship in a board location with size' do
    board = Board.new
    ship = Ship.new 3
    board.place_ship ship, :a1
    expect(board.location(:a1)).to eq(ship)
    expect(board.location(:a2)).to eq(ship)
    expect(board.location(:a3)).to eq(ship)
  end
end
