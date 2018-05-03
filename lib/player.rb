class Player

  attr_reader :name, :hit_points

  HIT_POINTS = 60
  DAMAGE_POINTS = 10

  def initialize(name, hit_points=HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(other_player)
    other_player.damage_received
  end

  def damage_received
    @hit_points -= DAMAGE_POINTS
  end

end
