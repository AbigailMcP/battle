require_relative 'player'

class Game
  #
  # def initialize(player_class = Player)
  #   @player_class = player_class
  # end

  def attack(player)
    player.receive_damage
  end

end
