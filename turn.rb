class Turn

  def initialize(player, question)
    @current_player = player
    @current_question = question
  end

  def begin
    puts "#{@current_player.name}: What does #{@current_question.first_num} plus #{@current_question.second_num} equal?"
    answer = gets

    if (answer.to_i == @current_question.answer)
      puts "Yes! You are correct."
    else
      puts "Seriously?  No!"
      @current_player.lost_a_life
    end
  end
end