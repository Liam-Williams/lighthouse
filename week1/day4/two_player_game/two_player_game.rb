require "highline/import"
require "byebug"

@player1_lives        = 3
@player2_lives        = 3
@current_player       = 1

def start_game
  @num1 = rand(1..20) 
  @num2 = rand(1..20)

  game_logic
end

def game_logic
  @answer = @num1 + @num2

  user_answer = ask("What is #{@num1} + #{@num2}?").to_i

  if user_answer == @answer
    puts "Correct!"
  
  else

    if @current_player == 1
      puts "Wrong!"
      @player1_lives -= 1

    else
      puts "Wrong!"
      @player2_lives -= 1
    end

  end

  player_switch
end

def player_switch
  if @current_player == 1
    @current_player = 2
    puts "You have #{@player1_lives} lives left!\nIt's now Player #{@current_player}'s turn"
  else
    @current_player = 1
    puts "You have #{@player2_lives} lives left!\n Its now Player #{@current_player}'s turn"
  end
end

loop do
  start_game

  break unless ((@player1_lives > 0) && (@player2_lives > 0))
end
