require "./card"
require "./deck"

class Play
  def initialize
    @players = [1, 2, 3, 4, 5]
  end

  def run
    make_deck
    play_hands
  end

  def make_deck
    @deck = Deck.new
  end

  def play_hands
    @players.each do |player|
      puts "Player #{player}:"
      puts "---------"
      puts play_hand
    end
  end

  def play_hand
    @deck.sample(5)
  end
end

poker = Play.new
poker.run

