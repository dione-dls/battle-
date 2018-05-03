require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new }
  subject(:player1) { Player.new('Charly') }
  subject(:player2) { Player.new('Zoe') }
  
  describe '#damage_received' do
    it 'reduces the hit points by damage amount' do
      game.attack(player2)
      expect(player2.hit_points).to eq 50
    end
  end

  describe '#attack' do
    it 'should reduce the other player\'s hit points on attack' do
      expect(player2).to receive(:damage_received)
      game.attack(player2)
    end
  end
end
