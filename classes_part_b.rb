class Team

  attr_accessor :team_name, :players, :coach, :points


  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_player(player)
    @players.include?(player)
  end

  def team_won(point)
    @points += 1
  end


  # def team_name
  #   return @team_name
  # end
  #
  # def players_names
  #   return @players
  # end
  #
  # def coach_name
  #   return @coach
  # end
  #
  # def set_coach_name(new_coach_name)
  #   @coach = new_coach_name
  # end









end
