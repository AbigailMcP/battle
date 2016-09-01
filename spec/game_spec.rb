require 'game'

describe Game do

subject(:game) {described_class.new}
# let(:player_class) {double :player_class, new: player}
let(:player) {double :player}

  it '#attack calls receive damage' do
    expect(player).to receive(:receive_damage)
    game.attack(player)
  end

end
