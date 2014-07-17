class Hotel
  def initialize(hotel_data)
    @hotel_data = hotel_data
  end

  def name
    @hotel_data.fetch("Hotel")
  end

  def city
    @hotel_data.fetch("City")
  end

  def phone
    @hotel_data.fetch("Phone Number")
  end

  def singles
    @hotel_data.fetch("Number of Singles")
  end

  def doubles
    @hotel_data.fetch("Number of Doubles")
  end

  def display
    puts "Hotel Name: #{name}"
    puts "Location: #{city}"
    puts "Phone: #{phone}"
    puts "Number of single beds: #{singles}"
    puts "Number of double beds: #{doubles}"
  end
end
