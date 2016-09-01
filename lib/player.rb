class Player

attr_reader :name, :hit_points

  def initialize(name = nil)
    @name = name
    @hit_points = 0
  end

  def attack
    @hit_points += 1
  end

end
