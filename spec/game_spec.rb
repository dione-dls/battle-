require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  subject(:player1) { double :player }
  subject(:player2) { double :player }

  # describe '#initialize' do
  #   it 'takes 2 player instances as arguments' do
  #     expect(game).to respond_to(:new).with(2).arguments
  #   end
  # end

  describe '#attack' do
    it 'should reduce the other player\'s hit points on attack' do
      expect(player2).to receive(:damage_received)
      game.attack(player2)
    end
  end
end
