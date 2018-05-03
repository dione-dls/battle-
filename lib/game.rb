class Game

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def attack(other_player)
    other_player.damage_received
  end
end
