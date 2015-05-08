require 'capybara/rspec'

feature 'player preparing for game' do
  scenario 'place a ship in a board location' do
    board = Board.new
    ship = Ship.new
    board.place_ship ship, :a1
    expect(board.location(:a1)).to eq(ship)
  end
end
