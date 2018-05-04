require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player1, player2) }

  let(:player1) { double :player1 }
  let(:player2) { double :player2, hit_points: 60, damage_received: 50 }

  describe '#attack' do
    it 'should reduce the player\'s 2 hit points on attack' do
      expect(game.attack(player2)).to eq 50
    end
  end
end
