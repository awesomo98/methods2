require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal false, @m.elevenish?(5)
		assert_equal false, @m.elevenish?(10)
		assert_equal true, @m.elevenish?(22)
		assert_equal true, @m.elevenish?(34)
		assert_equal true, @m.elevenish?(121)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party(2,3)
		assert_equal 0, @m.ice_cream_party(3,6)
		assert_equal 0, @m.ice_cream_party(5,2)
		assert_equal 1, @m.ice_cream_party(5,6)
		assert_equal 1, @m.ice_cream_party(7,10)
		assert_equal 2, @m.ice_cream_party(5,10)
		assert_equal 2, @m.ice_cream_party(7,21)
	end

	def test_squirrel_party
		assert_equal true, @m.squirrel_party?(40, true)
		assert_equal true, @m.squirrel_party?(41, true)
		assert_equal true, @m.squirrel_party?(59, true)
		assert_equal true, @m.squirrel_party?(60, true)
		assert_equal false, @m.squirrel_party?(39, true)
		assert_equal true, @m.squirrel_party?(61, false)
		assert_equal false, @m.squirrel_party?(61, true)
	end

def test_in_order
		assert_equal true, @m.in_order?(1, 2, 3, false)
		assert_equal true, @m.in_order?(3, 2, 4, true)
		assert_equal false, @m.in_order?(3, 2, 4, false)
		assert_equal false, @m.in_order?(1, 2, 1, false)
	end

	def test_less_by_ten
		assert_equal true, @m.less_by_ten?(0, 10, 7)
		assert_equal false, @m.less_by_ten?(0, 8, 7)
		assert_equal true, @m.less_by_ten?(0, 18, 8)
		assert_equal true, @m.less_by_ten?(100, 110, 9)
	end

	def test_fizz_string
		assert_equal F, @m.fizz_string(fizz)
		assert_equal F, @m.fizz_string(fudge)
		assert_equal B, @m.fizz_string(job)
		assert_equal str, @m.fizz_string(fib)
	 end

	def test_double23
		assert_equal false, @m.double23?(0,1)
		assert_equal true, @m.double23?(2,2)
		assert_equal true, @m.double23?(3,3)
		assert_equal false, @m.double23?(0,0)
		assert_equal false, @m.double23?(2,0)
		assert_equal false, @m.double23?(2,3)
	end


end

