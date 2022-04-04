class Question
  attr_reader :num1, :num2, :operator
  attr_accessor :user_answer
  OPERATORS = [ADD = :+, SUBTRACT = :-]

  def initialize()
    @num1 = (rand * 20).round
    @num2 = (rand * 20).round
    @operator = self.rand_operator
    @user_answer = 0
  end

  def rand_operator
    OPERATORS.sample
  end

  def run_question(player_id)
    puts generate_question
    print "P#{player_id}s Turn: "
    self.user_answer = gets.chomp

    puts "You selected #{user_answer}, the correct answer was #{get_correct_answer}."

    if user_answer.to_i == get_correct_answer.to_i
      puts 'Great Job!'
      return true
    else
      puts 'Too Bad!'
      return false
    end
  end

  def generate_question
    "What is the value of x given the following? #{num1} #{operator} #{num2} = x"
  end

  def get_correct_answer
    if operator == :+
      return num1 + num2
    elsif operator == :-
      return num1 - num2
    end
  end
end
