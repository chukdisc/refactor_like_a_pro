# Message is displayed to user asking them to enter rock, paper or scissors
# Take user input
# Print "Rock, Paper, Scissors, shoot!" to the screen
# Display user selection and AI selection
# Print which player wins
# Add point to winner score tally
class Play
  def initialize
  end

  def play
    ask_user_for_move
    print_moves
    print_winner
    score_points 
  end

  def ask_user_for_move
    puts "You can choose 'rock', 'paper' or 'scissors'."
    puts "Please enter your move:"
    @user_move = gets.chomp
  end

  def print_moves
    puts
    puts "Rock!  Paper!  Scissors!  Shoot!"
    puts "..."
    sleep(2)
    puts "You: #{@user_move}"
  end
end
