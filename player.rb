
class Player

  # initialize player name, lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def get_lives
    @lives
  end

  def get_name
    @name
  end
  # live state protected with public method

  # decrease_lives
  def loose_life
    @lives -= 1
  end


  # is_dead
  def is_dead?
    @lives == 0
  end


  # new_question
  def new_question
    new_question = Question.new()
    new_question.ask_question(@name)
    puts " \n "
    input = $stdin.gets.chomp.to_i
    if !new_question.check_answer?(input.to_i) # input to integer
      puts "\n Sorry. Your wrong..."
      loose_life
    else
      puts "\n Waahooo Your Correct!"
    end
  end

end
