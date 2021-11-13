require 'minitest/autorun'

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

=begin
This problem involves finding the number of integers with a value greater than 5. In Ruby speak, you could put it like this: Given an array, count how many items are greater than 5.

  To solve this, you begin by outlining the logic, then translating it into code. An array is a collection of data.

  For example:

        Array = [17, 7, 3, 6, 10, 1]

First, you go through the entire array and ask if each number is greater than 5.

You then create a “count” variable by checking if each number has a value higher than 5. If it is, you count it, and if not, you don’t.
=end
class NumbersGreaterThanFive
  def count(array)
    array.count { |number| number > 5 }
  end
end