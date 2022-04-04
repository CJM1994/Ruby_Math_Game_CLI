class Match
  PLAYER_ONE = 1
  PLAYER_TWO = 2
  attr_accessor :player_points

  def initialize
    self.player_points = {1=>0, 2=>0}
  end

  def add_point(player_id)
    self.player_points[player_id] += 1
  end

  def display_scoreboard
    puts "P1: #{player_points[PLAYER_ONE]}/3 vs P2: #{player_points[PLAYER_TWO]}/3"
  end

  def over
    if player_points[PLAYER_ONE] >= 3 || player_points[PLAYER_TWO] >= 3
      return true
    else
      return false
    end
  end

end