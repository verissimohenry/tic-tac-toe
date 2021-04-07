require_relative 'player_logic'

module GameLogic
  def main_part_logic(player)
    check_outcome(player)
    game_over
  end
end
