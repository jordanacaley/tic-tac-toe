require 'bundler'
Bundler.require

require_relative 'board_case.rb'
require_relative 'player.rb'
require_relative 'game.rb'


class Board
  # board_cases_array is an array containing the 9 BoardCases
  attr_accessor :board_cases_array
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


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
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end

binding.pry