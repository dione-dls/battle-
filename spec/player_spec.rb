require 'player'

describe Player do
  subject(:name) { described_class.new('Zoe') }


  describe '#name' do
    it 'should return the player\'s name' do
      expect(subject.name).to eq 'Zoe'
    end
  end

end
