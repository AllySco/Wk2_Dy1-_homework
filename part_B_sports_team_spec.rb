require('minitest/autorun')
require('minitest/rg')
require_relative('./part_B_sports_team.rb')
class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new("Warriors", ["Barry", "Calum", "Jamie", "Ally", "Craig"], "McAfro")
  end

  def test_get_team_name
    assert_equal("Warriors", @sports_team.team_name)
  end

  def test_get_players
    assert_equal(["Barry", "Calum", "Jamie", "Ally", "Craig"], @sports_team.players)
  end

  # def test_get_players
  #   assert_equal(5, @sports_team.players.count)
  # end

  def test_get_coach_name
    assert_equal("McAfro", @sports_team.coach_name)
  end

  def test_set_coach_name
    @sports_team.coach_name = ("Grant")
    assert_equal("Grant", @sports_team.coach_name)
  end

  def test_add_new_player
    @sports_team.add_new_player("Brandon")
    assert_equal(["Barry", "Calum", "Jamie", "Ally", "Craig", "Brandon"], @sports_team.players)
  end

  def test_player_name_check
    assert_equal(true, @sports_team.player_name_check("Craig"))
  end


  def test_player_name_check_missing
    assert_equal(false, @sports_team.player_name_check("Dan"))
  end

  def test_add_to_wins
    assert_equal(1, @sports_team.add_to_wins("win"))
  end

  def test_add_to_loss
    assert_equal(1, @sports_team.add_to_loss("loss"))
  end

  def test_play_game
    assert_equal(1, @sports_team.play_game("win"))
  end


  def test_win_loss_rate
    @sports_team.add_to_wins("win")
    @sports_team.add_to_loss("loss")
    @sports_team.add_to_loss("loss")
    @sports_team.add_to_loss("loss")
    assert_equal(0.25, @sports_team.win_loss_rate)
  end

  ######### was trying to include a win-loss rate floating point number but need to change a lot in the class section #########

end