require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#attack' do
    it 'calls a player method to reduce player HP' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end

    it 'first attacked player is player 2' do
      expect(game.attacked_player).to eq player_1
    end

    it 'player_2 attacks player_1' do
      allow(player_2).to receive(:receive_damage)
      allow(player_1).to receive(:receive_damage)
      game.attack
      expect(game.attacked_player).to eq player_2
    end
  end

  it 'returns player_1 instance' do
    expect(game.player_1).to eq player_1
  end

  it 'returns player_2 instance' do
    expect(game.player_2).to eq player_2
  end
end
