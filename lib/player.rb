class Player
  DEFAULT_HP = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP

  end

  def hit_points
    @hit_points
  end

  def attack(name)
    name.receive_attack
  end

  def receive_attack
    @hit_points -= 10
  end
end
