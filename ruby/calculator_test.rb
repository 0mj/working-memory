require_relative 'calculator'
require 'minitest/autorun'

class TestCalculator < Minitest::Test

	def setup
		@calculator = Calculator.new
	end

	def test_add
		assert_equal 2, @calculator.add(1, 1)
	end	

	def test_subtract
		assert_equal 8, @calculator.subtract(16, 8)
	end

	def test_multiply
		assert_equal 64, @calculator.multiply(8, 8)
	end

	def test_divide
		assert_equal 5, @calculator.divide(35, 7)
	end

	def test_divide_by_zero
		# assert_equal 'Error: Division by zero', @calculator.divide(1, 0)
		assert_equal 'ZeroDivisionError: divided by 0', @calculator.divide(1, 0)
	end

end	