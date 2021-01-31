require_relative 'board.rb'

class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    puts "-"*25
    puts "|       |       |       |"
    puts "|   #{board.board_cases_array[0].board_case_value}   |   #{board.board_cases_array[3].board_case_value}   |   #{board.board_cases_array[6].board_case_value}   |"
    puts "|       |       |       |"
    puts "-"*25
    puts "|       |       |       |"
    puts "|   #{board.board_cases_array[1].board_case_value}   |   #{board.board_cases_array[4].board_case_value}   |   #{board.board_cases_array[7].board_case_value}   |"
    puts "|       |       |       |"
    puts "-"*25
    puts "|       |       |       |"
    puts "|   #{board.board_cases_array[2].board_case_value}   |   #{board.board_cases_array[5].board_case_value}   |   #{board.board_cases_array[8].board_case_value}   |"
    puts "|       |       |       |"
    puts "-"*25

  end

end

Show.new.show_board(Board.new)