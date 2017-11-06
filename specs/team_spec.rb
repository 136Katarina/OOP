require 'minitest/autorun'
require 'minitest/rg'
require_relative '../team.rb'


  class TestSportsTeam < MiniTest::Test

    def setup

      @ice_hockey = SportsTeam.new("My Team", ["Mark", "Joe"], "Paul")

    end

    def test_update_coach
      @ice_hockey.update_coach("Tom")
      assert_equal("Tom", @ice_hockey.coach)
    end

    def test_add_new_player
      @ice_hockey.add_player("Jim")
      assert_equal("Jim", @ice_hockey.players.pop)
    end

    def test_find_player
      found_player = @ice_hockey.find_player("Mark")
      assert_equal( "Mark" , found_player )
    end

    def test_update_points
      @ice_hockey.update_points(true)
      assert_equal( 2 , @ice_hockey.points )
    end


end
