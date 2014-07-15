class Game
  MOVES = ['rock', 'paper', 'scissors']

  def initialize(number_of_rounds)
    @number_of_rounds = number_of_rounds
    @user_score = 0
    @computer_score = 0
  end

  def play
    @number_of_rounds.times do
      ask_user_for_move
      generate_computer_move
      introduce_round
      print_moves
      round = Round.new(@user_move, @computer_move)
      round.evaluate
    end
  end

  def ask_user_for_move
    puts "You can choose 'rock', 'paper' or 'scissors'."
    puts "Please enter your move:"
    @user_move = gets.chomp.downcase
  end

  def generate_computer_move
    @computer_move = MOVES.sample
  end

  def introduce_round
    puts
    puts "Rock!  Paper!  Scissors!  Shoot!"
    puts "..."
    sleep(1)
  end

  def print_moves
    puts "You: #{@user_move}"
    puts "Computer: #{@computer_move}"
  end

  def compare_moves
  end

  def print_user_win
    puts "Congratulations, you won!"
    score_user
    print_scores
  end

  def print_computer_win
    puts "Sorry, you lost"
    score_computer
    print_scores
  end

  def print_tie
    puts "You tied!"
    print_scores
  end

  def score_user
    @user_score += 1
  end

  def score_computer
    @computer_score += 1

  end

  def print_scores
    puts "You: #{@user_score}"
    puts "Computer: #{@computer_score}"
    sleep(1)
    puts "--------------------------------"
    puts
  end
end

class Round
def initialize
  @user_move = user_move
  @computer_move = computer_move
end

def evaluate
  case [@user_move, @computer_move]
  when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
    user
  when ['rock', 'rock'], ['scissors', 'scissors'], ['paper', 'paper']
    tie
  when ['scissors', 'rock'], ['rock', 'paper'], ['paper', 'scissors']
    computer
  end
end

class Player
  def initialize

  end
end

class Computer
  def initialize

  end
end

end

play = Play.new(3)
play.play
