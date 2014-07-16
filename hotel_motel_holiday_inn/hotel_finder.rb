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

hotel_lister = HotelLister.new("hotels.csv")
hotel_lister.hotel_names
