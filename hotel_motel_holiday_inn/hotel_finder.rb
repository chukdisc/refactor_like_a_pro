require 'csv'

class HotelLister
  def initialize(filename)
    @filename = filename
  end

  def hotel_names
    user = User.new
    CSV.foreach(@hotel_data_file, headers: true) do |row|
    end
  end
end

class User
  def initialize
  end

  def query
    puts "Enter the name of the hotel you would like to search for:"
    user_search = gets.chomp
    user_search
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.hotel_names
