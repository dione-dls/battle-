require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new }
  subject(:player1) { double :player }
  subject(:player2) { double :player }

  describe '#attack' do
    it 'should reduce the other player\'s hit points on attack' do
      expect(player2).to receive(:damage_received)
      game.attack(player2)
    end
  end
end
