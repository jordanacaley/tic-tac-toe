require 'bundler'
Bundler.require

require_relative 'board_case.rb'

class Board
  # board_cases_array is an array containing the 9 BoardCases, count_turn counts the number of turns taken
  attr_accessor :board_cases_array, :count_turn

  def initialize
    # Create 9 instances of BoardCases
    board_case_A1 = BoardCase.new(" ", "A1")
    board_case_A2 = BoardCase.new(" ", "A2")
    board_case_A3 = BoardCase.new(" ", "A3")
    board_case_B1 = BoardCase.new(" ", "B1")
    board_case_B2 = BoardCase.new(" ", "B2")
    board_case_B3 = BoardCase.new(" ", "B3")
    board_case_C1 = BoardCase.new(" ", "C1")
    board_case_C2 = BoardCase.new(" ", "C2")
    board_case_C3 = BoardCase.new(" ", "C3")
    # Store these instances in an array that is the attr_accessor of the class
    @board_cases_array = [board_case_A1, board_case_A2, board_case_A3, board_case_B1, board_case_B2, board_case_B3, board_case_C1, board_case_C2, board_case_C3]
    @count_turn = 0
  end

  def play_turn(player)
    #1) Ask the right player what he/she wants to do
    puts "#{player.name}, which square do you want to play in?"
    player_move = gets.chomp
    
    #2) Change the BoardCase played based on the value of the player (X or O)
    i = 0
    while i < 9
      if player_move == @board_cases_array[i].board_case_id
        board_cases_array[i].board_case_value = player.value
      end
      i = i + 1
    end
    @count_turn = @count_turn + 1
  end

  def victory?
    # Method that verifies the board and indicates if there is a winner or it's a draw
      if @board_cases_array[0].board_case_value == "X" && @board_cases_array[1].board_case_value == "X" && @board_cases_array[2].board_case_value == "X"
        return "X"
      elsif @board_cases_array[3].board_case_value == "X" && @board_cases_array[4].board_case_value == "X" && @board_cases_array[5].board_case_value == "X"
        return "X"
      elsif @board_cases_array[6].board_case_value == "X" && @board_cases_array[7].board_case_value == "X" && @board_cases_array[8].board_case_value == "X"
        return "X"
      elsif @board_cases_array[0].board_case_value == "X" && @board_cases_array[3].board_case_value == "X" && @board_cases_array[6].board_case_value == "X"
        return "X"
      elsif @board_cases_array[1].board_case_value == "X" && @board_cases_array[4].board_case_value == "X" && @board_cases_array[7].board_case_value == "X"
        return "X"
      elsif @board_cases_array[2].board_case_value == "X" && @board_cases_array[5].board_case_value == "X" && @board_cases_array[8].board_case_value == "X"
        return "X"
      elsif @board_cases_array[0].board_case_value == "X" && @board_cases_array[4].board_case_value == "X" && @board_cases_array[8].board_case_value == "X"
        return "X"
      elsif @board_cases_array[2].board_case_value == "X" && @board_cases_array[4].board_case_value == "X" && @board_cases_array[6].board_case_value == "X"
        return "X"
      elsif @board_cases_array[0].board_case_value == "O" && @board_cases_array[1].board_case_value == "O" && @board_cases_array[2].board_case_value == "O"
        return "O"
      elsif @board_cases_array[3].board_case_value == "O" && @board_cases_array[4].board_case_value == "O" && @board_cases_array[5].board_case_value == "O"
        return "O"
      elsif @board_cases_array[6].board_case_value == "O" && @board_cases_array[7].board_case_value == "O" && @board_cases_array[8].board_case_value == "O"
        return "O"
      elsif @board_cases_array[0].board_case_value == "O" && @board_cases_array[3].board_case_value == "O" && @board_cases_array[6].board_case_value == "O"
        return "O"
      elsif @board_cases_array[1].board_case_value == "O" && @board_cases_array[4].board_case_value == "O" && @board_cases_array[7].board_case_value == "O"
        return "O"
      elsif @board_cases_array[2].board_case_value == "O" && @board_cases_array[5].board_case_value == "O" && @board_cases_array[8].board_case_value == "O"
        return "O"
      elsif @board_cases_array[0].board_case_value == "O" && @board_cases_array[4].board_case_value == "O" && @board_cases_array[8].board_case_value == "O"
        return "O"
      elsif @board_cases_array[2].board_case_value == "O" && @board_cases_array[4].board_case_value == "O" && @board_cases_array[6].board_case_value == "O"
        return "O"
      elsif @count_turn < 9
        return false
      else 
        return "draw"
      end
  end

end