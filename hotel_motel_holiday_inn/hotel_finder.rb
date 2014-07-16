require 'csv'

class HotelLister
  def initialize(filename)
    @filename = filename
  end

  def hotel_names
    CSV.foreach(@filename, headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

class User
  def initialize
  end

  def query
    puts "Enter the name of the hotel you would like to search for:"
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.hotel_names
