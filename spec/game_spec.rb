require 'game'

describe Game do

subject(:game) {described_class.new(player_1, player_2)}
let(:player_1) {double :player_1}
let(:player_2) {double :player_2}

  describe '#attack' do
    it 'calls receive damage' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'returns player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#turn_switcher' do
    it 'default current_player is player 1' do
      expect(game.current_player).to eq player_1
    end
    it 'switches to player 2' do
      game.turn_switcher
      expect(game.current_player).to eq player_2
    end
  end

end
