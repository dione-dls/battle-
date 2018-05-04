require 'player'
require 'game'

describe Player do
  subject(:name) { described_class.new('Zoe') }
  subject(:game) { Game.new(player1, player2) }
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
      allow(player1).to receive(:damage_received)
      game.attack(player2)
      expect(player2.hit_points).to eq 50
    end
  end
end
