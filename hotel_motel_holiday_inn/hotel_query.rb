require "./hotel_data_reader"

class HotelQuery
  def initialize(hotels)
    @hotels = hotels
  end

  def query_hotels
    set_search_criteria
    find_hotel
  end

  def set_search_criteria
    puts "Please enter the name of the hotel you are looking for:"
    @search_criteria = gets.chomp
  end

  def find_hotel
    hotel = @hotels.find { |hotel| !!(/#{@search_criteria}/.match(hotel.name)) } || NullObject.new
    puts hotel.display
  end
end

class NullObject
  def display
    "Sorry, your search did no yield any results"
  end
end

hotel_data_reader = HotelDataReader.new("hotels.csv")
hotel_query = HotelQuery.new(hotel_data_reader.hotels)
hotel_query.query_hotels
