
class Question

  # initialize _question_values
  def initialize
    @value_one = rand(1..20)
    @value_two = rand(1..20)
    @sum = @value_one + @value_two
  end

  # ask_question
  def ask_question(name)
    print "\n #{name} ===> What is #{@value_one} + #{@value_two} ?"
  end

  def check_answer?(input)
   @sum == input
  end

#end of class
end
