require 'player'

describe Player do
  subject(:name) { described_class.new('Zoe') }
  subject(:player1) { described_class.new('Charly') }
  subject(:player2) { described_class.new('Zoe') }


  describe '#name' do
    it 'should return the player\'s name' do
      expect(subject.name).to eq 'Zoe'
    end
  end

  describe '#hit_points' do
      it 'should return the player\'s hit points' do
        allow(subject).to receive(:hit_points) { Player::HIT_POINTS }
        expect(subject.hit_points).to eq Player::HIT_POINTS
    end
  end

  describe '#damage_received' do
    it 'reduces the hit points by damage amount' do
      player1.attack(player2)
      expect(player2.hit_points).to eq 50
    end
  end

  describe '#attack' do
    it 'should reduce the other player\'s hit points on attack' do
      expect(player2).to receive(:damage_received)
      player1.attack(player2)
    end
  end


end
