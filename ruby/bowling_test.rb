require_relative 'bowling'
require 'minitest/autorun'

class TestBowling < Minitest::Test

	def setup
	    @game = Bowling.new
	end

	def test_gutter_game
	    20.times { @game.roll(0) }
	    assert_equal 0, @game.score
	end

	def test_ten_gutters_ten_ones
		roll_many(10, 0)
		roll_many(10, 1)
		assert_equal 10, @game.score
	end

	def roll_many(rolls, pins)
		rolls.times do
			@game.roll(pins)
		end
	end

	def test_spare
		roll_spare
		@game.roll(3)
		roll_many(17,0)
		assert_equal 16, @game.score
	end

	def roll_spare
		roll_many(2, 5)
	end

	def test_strike
		roll_strike
		@game.roll(3)
		@game.roll(4)
		roll_many(16,0)
		assert_equal 24, @game.score
	end

	def roll_strike
		@game.roll(Bowling::PINS)
	end

	def test_perfect_game
		roll_many(12,Bowling::PINS)
		assert_equal 300, @game.score
	end

end