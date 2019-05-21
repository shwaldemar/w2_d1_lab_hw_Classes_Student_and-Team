require('minitest/autorun')
require('minitest/rg')
require('minitest/emoji')
require_relative('../w2d1_ex_B_team')

class TestTeam < MiniTest::Test

  def initialize(players, team, coach)
    @players = players
    @team = team
    @coach = coach
  end

  def setup( players, team, coach )
    @simon_hall = Team.new( "Simon Hall", "ES31", "Sandy" )
  end

  def test_team
    @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
    actual = @jamie_patterson.team
    assert_equal( "ES31", actual)
  end

  def test_players
    @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
    actual = @jamie_patterson.players
    assert_equal( "Jamie Patterson", actual)
  end

  def test_coach
    @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
    actual = @jamie_patterson.coach
    assert_equal( "Sandy", actual)
  end

  def test_set_players_name
    @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
    actual = @jamie_patterson.set_players_name("Bishop of Argyle")
    assert_equal("Bishop of Argyle", actual)
  end

  def test_set_coach_name
    @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
    actual = @jamie_patterson.set_coach_name("Bill Gates")
    assert_equal("Bill Gates", actual)
  end

  def test_set_team_name
    @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
    @jamie_patterson.set_team_name("Manchester City FC")
    actual = @jamie_patterson.team
    assert_equal("Manchester City FC", actual)
  end

  def test_add_new_player
    new_player = ("Kylie Minogue", "ES31", "Sandy")
    actual = ("Kylie Minogue")
    assert_equal( "Kylie Minogue", actual)


    def test_players
      @jamie_patterson = Team.new("Jamie Patterson", "ES31", "Sandy")
      actual = @jamie_patterson.players
      assert_equal( "Jamie Patterson", actual)
    end
  end



end
#B EXERCISES
## 1. Make a class to represent a Team that has the properties
## Team name (String), Players (array of strings) and a Coach (String).
## 2. For each property in the class make a getter method than can return them.
## 3. Create a setter method to allow the coach's name to be updated.
## 4. Refactor the class to use attr_reader or attr_accessor instead of your
## own getter and setter methods.
# 5. Create a method that adds a new player to the players array.
## 6. Add a method that takes in a string of a player's name and
# checks to see if they are in the players array.

# 7. Add a points property into your class that starts at 0.
# 8. Create a method that takes in whether the team has
# won or lost and updates the points property for a win.
