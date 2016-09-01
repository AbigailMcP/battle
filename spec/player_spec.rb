require 'player'

describe Player do

subject(:player1) { described_class.new(name1) }
subject(:player2) { described_class.new(name2) }
let(:name1) { double :name1 }
let(:name2) { double :name2 }

  it 'returns its own name' do
    expect(player1.name).to eq name1
  end

  describe '#receive_damage' do
    it 'initially hit points are 100' do
      expect(player1.hit_points).to eq 100
    end
    it '#attack updates hit_points' do
      expect{ player2.receive_damage }.to change{player2.hit_points}.by(-10)
    end
  end

  describe '#attack' do
    it 'calls receive_damage' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end


end
