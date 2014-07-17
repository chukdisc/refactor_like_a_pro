require "./hotel_data_reader"
require "./null_hotel"

class HotelQuery
  def initialize(hotels)
    @hotels = hotels
  end

  def query_hotels
    set_search_criteria
    find_hotel.display
  end

  def set_search_criteria
    puts "Please enter the name of the hotel you are looking for:"
    @search_criteria = gets.chomp
  end

  def find_hotel
    @hotels.find { |hotel| matches_search?(hotel) } || NullHotel.new
  end

  def matches_search?(hotel)
    hotel.name.downcase.include?(@search_criteria.downcase)
  end
end


hotel_data_reader = HotelDataReader.new("hotels.csv")
hotel_query = HotelQuery.new(hotel_data_reader.hotels)
hotel_query.query_hotels
