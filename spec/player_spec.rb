require 'player'

describe Player do
  subject(:lawrence) {Player.new('Lawrence')}

  describe '#name' do
    it 'returns the name' do
      expect(lawrence.name).to eq 'Lawrence'
    end
  end

  describe '#hp' do
    it 'initializes with 100 hp' do
      expect(lawrence.hp).to eq 100
    end

    it 'reduces by 10 when attacked' do
      expect{lawrence.receive_damage}.to change{lawrence.hp}.by -10
    end
  end

  # describe '#won?' do
  #   it 'returns true when player HP is zero' do
  #     10.times { lawrence.receive_damage }
  #     expect(lawrence.won?).to eq true
  #   end
  # end

end
