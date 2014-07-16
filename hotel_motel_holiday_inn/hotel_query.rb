require "./hotel_data_reader"

class HotelQuery
  def initialize(hotels)
    @hotels = hotels
  end

  def query_hotels
    set_search_criteria
    find_hotel.print_hotel_info
  end

  def set_search_criteria
    puts "Please enter the name of the hotel you are looking for:"
    @search_criteria = gets.chomp
  end

  def find_hotel
    @hotels.find do |hotel|
      hotel.name == @search_criteria
    end
  end
end

hotel_data_reader = HotelDataReader.new("hotels.csv")
hotel_query = HotelQuery.new(hotel_data_reader.hotels)
hotel_query.query_hotels
