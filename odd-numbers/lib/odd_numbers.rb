class OddNumberGenerator

  def initialize

  end

  def self.collect_odd_numbers_between(start_number, end_number)

    @odd_number_collection = Array.new

    while start_number <= end_number do
      @odd_number_collection << start_number if (start_number % 2) != 0
      start_number += 1
    end

    p @odd_number_collection
  end

end
