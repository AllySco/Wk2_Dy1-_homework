class SportsTeam

  attr_accessor :team_name, :players, :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @win_counter = 1
    @loss_counter = 1

  end

  def add_new_player(new_player)
    @players << new_player
  end

  def player_name_check(player_checked)
    return true if @players.include?(player_checked)
    return false
  end

  def add_to_wins(win)
    if win == "win"
      @win_counter = @win_counter += 1
      return @win_counter
    end
  end


  # def add_to_loss(loss)
  #   if loss == "loss"
  #    @loss_counter = @loss_counter +=1
  #    return @loss_counter
  #   end
  # end

  # def win_loss_rate(rate)
  #   rate = (@win_counter.to_f) / (@wincounter.to_f + @loss_counter.to_f)
  #   return rate
  # end


  ######### was trying to include a win-loss floating point number but need to change a lot in the class section #########







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