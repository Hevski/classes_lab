require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_b.rb')

class TestTeam < MiniTest::Test

def test_team_name
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  assert_equal("The Awesomes", sport_team.team_name)
end

def test_players_names
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  assert_equal(["Bob", "Cat", "Jim", "Joe", "Fab"], sport_team.players)
end

def test_coach_name
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  assert_equal("Mighty Matthew", sport_team.coach)
end

def test_set_coach_name
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  sport_team.coach = "Giant Jane"
  assert_equal("Giant Jane", sport_team.coach)
end

def test_add_new_player
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  sport_team.add_new_player("Gerry")
  assert_equal(["Bob", "Cat", "Jim", "Joe", "Fab", "Gerry"], sport_team.players)
end

def test_is_player_in_array__true
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  assert(sport_team.check_player("Fab"))
end

def test_is_player_in_array__false
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  refute(sport_team.check_player("James"))
end

def test_team_won_or_lost
  sport_team = Team.new("The Awesomes", players = ["Bob", "Cat", "Jim", "Joe", "Fab"], "Mighty Matthew", 0)
  sport_team.team_won(2)
  assert_equal(2, sport_team.points)
end





end
