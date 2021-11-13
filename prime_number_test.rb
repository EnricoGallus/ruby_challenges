require 'minitest/autorun'
require_relative 'prime_number'

class PrimeNumberTest < Minitest::Test
  def setup
    @prime = PrimeNumber.new
  end

  def test_1_is_a_prime
    assert_equal false, @prime.is_prime(1)
  end

  def test_2_is_a_prime
    assert_equal true, @prime.is_prime(2)
  end

  def test_3_is_a_prime
    assert_equal true, @prime.is_prime(3)
  end

  def test_4_is_not_a_prime
    assert_equal false, @prime.is_prime(4)
  end
end
