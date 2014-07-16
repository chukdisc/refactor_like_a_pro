require 'csv'

class HotelListReader
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  attr_reader: @hotel_data

  def read_hotel_data
    hotels = CSV.foreach(@hotel_data_file, headers: true) do |row|
      @hotels << Hotel.new(row)
    end
  end
end

