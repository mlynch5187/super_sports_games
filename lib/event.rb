class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @ages.sum / @ages.length.to_f
  end

  def standard_deviation_age
    sum_of_integers = ages.sum
    number_of_integers = ages.length
    average_of_integers = (sum_of_integers.to_f / number_of_integers)
    subtracted = ages.map do |age|
                    age - average_of_integers
                  end
    squared = subtracted.map do |subtracted_age|
                subtracted_age ** 2
              end
    squared_sum = squared.sum
    divided_sum = squared_sum / number_of_integers
    square_root = Math.sqrt(divided_sum).round(2)
    square_root
  end
end
