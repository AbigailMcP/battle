require 'player'

describe Player do

subject(:player) { described_class.new(my_name) }
let(:my_name) { double :my_name }

  it 'returns its own name' do
    expect(player.name).to eq my_name
  end

  describe 'hit points' do
    it 'initially hit points are zero' do
      expect(player.hit_points).to eq 0
    end
    it '#attack updates hit_points' do
      player.attack
      expect(player.hit_points).to eq 1
    end
  end

end
