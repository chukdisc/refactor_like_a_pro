require 'csv'

class HotelFinder
  def initialize(hotel_data_file)
    @hotel_data_file = hotel_data_file
  end

  def hotel_names
    CSV.foreach(@hotel_data_file, headers:true) do |row|
      puts row[0]
    end
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.hotel_names
