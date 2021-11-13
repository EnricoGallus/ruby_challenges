require 'minitest/autorun'
require_relative 'numbers_greater_than_five'

class NumbersGreaterThanFiveTest < Minitest::Test

  def setup
    @greater = NumbersGreaterThanFive.new
  end

  def test_that_empty_array_is_0
    assert_equal 0, @greater.count([])
  end

  def test_that_random_array_contains_exact_amount
    assert_equal 4, @greater.count([17, 7, 3, 6, 10, 1])
  end

  def test_without_greater_return_0
    assert_equal 0, @greater.count([2, 5, 3, 1])
  end
end
