require "./hotel_data_reader"
require "./hotel"

class HotelQuery
  def initialize(hotels)
    @hotels = hotels
  end

  def query_hotels
    search_criteria
    find_hotel
    @query_result.print_hotel_info
  end

  def search_criteria
    puts "Please enter the name of the hotel you are looking for:"
    @search_criteria = gets.chomp
  end

  def find_hotel
    @query_result = @hotels.find do |hotel|
      hotel.name == @search_criteria
    end
  end
end

hotel_data_reader = HotelDataReader.new("hotels.csv")
hotel_data_reader.read_hotel_data
hotel_query = HotelQuery.new(hotel_data_reader.hotels)
hotel_query.query_hotels
