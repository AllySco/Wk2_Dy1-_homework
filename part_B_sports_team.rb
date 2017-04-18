class SportsTeam

  attr_reader :team_name, :players
  attr_accessor :coach_name 

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @win_counter = 0.0
    @loss_counter = 0.0
    

  end

  def add_new_player(new_player)
    @players << new_player
  end

  def player_name_check(player_checked)
    return true if @players.include?(player_checked)
    return false
  end

  def add_to_wins(result)
    if result == "win"
      @win_counter += 1
    end
  end

  def add_to_loss(result)
    if result == "loss"
      @loss_counter += 1
    end
  end

  def play_game(result)
    add_to_loss(result)
    add_to_wins(result)
  end

  # def win_loss_rate(rate)
  #   return @win_loss_rate
  # end


  def win_loss_rate()
    rate = (@win_counter) / (@win_counter + @loss_counter)
    return rate
  end


  ######### was trying to include a win-loss rate floating point number but need to change a lot in the class section #########







  # def get_team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end

  # def get_coach_name
  #   return @coach_name
  # end

  # def set_coach_name(new_coach)
  #   @coach_name = new_coach
  # end




end