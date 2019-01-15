require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_b.rb')

class TestTeam < MiniTest::Test

  # def setup
  #   @sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  # end

  #or

  # def setup
  #   @players = ["Bob", "Cat", "Jim", "Joe", "Fab"]
  #   @sport_team = ("The Awesomes", @players, "Mighty Matthew", 0)
  # end

  #def test_team_name
  #  assert_equal("The Awesomes", @sport_team.name)
#  end
def test_team_name
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  assert_equal("The Awesomes", sport_team.team_name)
end

#   def test_players_names
#   expexted = @players
#   assert_equal(expected, @sport_team.players_names())
#   end


def test_players_names
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  assert_equal(["Bob", "Cat", "Jim", "Joe", "Fab"], sport_team.players)
end

def test_coach_name
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  assert_equal("Mighty Matthew", sport_team.coach)
end

def test_set_coach_name
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  sport_team.coach = "Giant Jane"
  assert_equal("Giant Jane", sport_team.coach)
end

def test_add_new_player
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  sport_team.add_new_player("Gerry")
  assert_equal(["Bob", "Cat", "Jim", "Joe", "Fab", "Gerry"], sport_team.players)
end

def test_is_player_in_array__true
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  assert(sport_team.check_player("Fab"))
end

def test_is_player_in_array__false
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  refute(sport_team.check_player("James"))
end

# def test_get_points
#   assert_equal(0, @team.points)
# end

def test_team_won_or_lost
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew")
  sport_team.team_won("win")
  assert_equal(1, sport_team.points)
end





end
