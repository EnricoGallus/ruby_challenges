require 'prime'

class SumOfPrime
  def calculate_sum(array)
    return 0 if array.nil?

    #array.select { |num| num.prime? }.sum
    array.select(&:prime?).sum
  end
end
