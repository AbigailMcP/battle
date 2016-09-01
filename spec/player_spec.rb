require 'player'

describe Player do

subject(:player) { described_class.new(my_name) }
let(:my_name) { double :my_name }

  it 'returns its own name' do
    expect(subject.name).to eq my_name
  end

end
