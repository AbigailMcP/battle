require_relative 'player'

class Game

attr_reader :current_player, :players_array

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players_array = [@player_1, @player_2]
    @current_player = @player_1
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attack(player)
    player.receive_damage
  end

  def turn_switcher
    @current_player = players_array.reverse!.first
  end

end
