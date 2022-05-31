
class Game

  #initialize_player1 and player2
  def initialize
    puts "Hey player one! Enter your name"
    player_one_name = $stdin.gets.chomp.to_s
    @player_one = Player.new(player_one_name)
    puts " Hey player two! Enter your name"
    player_two_name = $stdin.gets.chomp.to_s
    @player_two = Player.new(player_two_name)

  end


  # start_game
  def start_game
    puts "\n Welcome #{@player_one.get_name} and #{@player_two.get_name} Let's Get Started"
    turn
  end


  # show_lives
  def show_lives
    puts "\n #{@player_one.get_name} has #{@player_one.get_lives} lives and #{@player_two.get_name} has #{@player_two.get_lives} lives."
  end


  # turns
  def turn
    @player_one.new_question
    check_score
    @player_two.new_question
    check_score
    show_lives
    puts "\n ------- NEW TURN -------"
    turn
  end


  # who_wins
  def who_wins(player)
    puts "\n #{player.get_name} Wins!"
    puts "\n ------- GAME OVER -------"
    exit(0)
  end


  # check_score
  def check_score
    if @player_one.is_dead?
      who_wins(@player_two)
    elsif @player_two.is_dead?
      who_wins(@player_one)
    end
  end

#end for class
end
