class Team

  attr_reader :players, :team, :coach
  attr_accessor :players, :team, :coach

  def initialize(players, team, coach)
    @players = players
    @team = team
    @coach = coach
  end

  def team(team)
    return @team
  end

  def team_players(players)
    return @players
  end

  def team_coach(coach)
    return @coach
  end

  def set_players_name(new_name)
    @players = new_name
  end

  def set_coach_name(new_coach)
    @coach = new_coach
  end

  def set_team_name(new_team)
    @team = new_team
  end

  def add_new_player(new_player, team, coach)
    Team.new(new_player, team, coach)
  end


end
##
