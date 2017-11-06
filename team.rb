class SportsTeam

  attr_accessor :name, :players, :coach, :points

  def initialize (name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def update_coach(new_coach)
    @coach = new_coach
  end

  def add_player (new_player)
    @players.push(new_player)
  end

  def find_player(player_name)
    for player in @players
      if player == player_name
        return player
      end
    end
  end

  def update_points(result)
    if result == true
      @points += 2
    else
      @points += 1
    end
  end

end
