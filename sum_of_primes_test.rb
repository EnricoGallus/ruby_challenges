require 'minitest/autorun'
require_relative 'sum_of_primes'

class SumOfPrimeTest < Minitest::Test
  def setup
    @sum = SumOfPrime.new
  end

  def test_no_elements_return_zero
    assert_equal 0, @sum.calculate_sum([])
  end

  def test_zero_if_no_primes
    assert_equal 0, @sum.calculate_sum([0, 1, -7, 4, 8, 16])
  end

  def test_sum_up_primes_correctly
    assert_equal 27, @sum.calculate_sum([0, 1, 3, 7, 17, 18])
  end
end
