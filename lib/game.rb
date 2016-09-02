require_relative 'player'

class Game

attr_reader :attacked_player, :player_arr

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_arr = [@player_1, @player_2]
    @attacked_player = @player_1
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attack
    turn_switcher
    @attacked_player.receive_damage
  end

  private

  def turn_switcher
    @attacked_player = @player_arr.reverse!.first
  end

end
