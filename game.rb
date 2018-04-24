require './question.rb'
require './player.rb'
require './turn.rb'

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def swap_players
    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def begin
    while (@player1.lives > 0 && @player2.lives > 0)
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----"
      current_question = Question.new
      current_turn = Turn.new(@current_player, current_question)
      current_turn.begin
      self.swap_players
    end

    if (@player1.lives == 0)
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    else
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end