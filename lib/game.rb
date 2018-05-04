require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
  end

  def attack(player_2)
    player_2.damage_received
  end

  def switch_turns(player)
    @turn = player
  end
end
