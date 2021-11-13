=begin
To create an algorithm that finds prime numbers, you have to decide if the number in question can only be divided by itself and 1. To do that, you have to check if the number can be divided by itself and each number below it, down to 1.
The process in Ruby is to check whether each number is divisible by these integers, and if it is, then Ruby designates it as a prime number.
=end
require 'minitest/autorun'

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

class PrimeNumber
  def is_prime(number)
    return false if number <= 1

    Math.sqrt(number).to_i.downto(2).each { |i| return false if (number % i).zero? }
    true
  end
end