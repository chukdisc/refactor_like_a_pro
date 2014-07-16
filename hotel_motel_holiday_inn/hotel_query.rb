class HotelQuery
  def initialize(hotels)
    @hotels = hotels
  end

  def search_criteria
    puts "Please enter the name of the hotel you are looking for:"
    @search_criteria = gets.chomp
  end

  def find_hotel
  end

end
