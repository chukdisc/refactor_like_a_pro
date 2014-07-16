require 'csv'
require "./hotel"

class HotelDataReader
  def initialize(filename)
    @filename = filename
  end

  def hotels 
    CSV.foreach(@filename, headers: true).map do |row|
      Hotel.new(row)
    end
  end
end
