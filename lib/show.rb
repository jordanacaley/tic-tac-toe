class Show

  def show_board(board)
    # Display in the terminal the object of class Board in input. It is activated with Show.new.show_board(instance_of_Board)
    puts "      A       B       C    "
    puts "  "+("-"*25)
    puts "  |       |       |       |"
    puts "1 |   #{board.board_cases_array[0].board_case_value}   |   #{board.board_cases_array[3].board_case_value}   |   #{board.board_cases_array[6].board_case_value}   |"
    puts "  |       |       |       |"
    puts "  "+("-"*25)
    puts "  |       |       |       |"
    puts "2 |   #{board.board_cases_array[1].board_case_value}   |   #{board.board_cases_array[4].board_case_value}   |   #{board.board_cases_array[7].board_case_value}   |"
    puts "  |       |       |       |"
    puts "  "+("-"*25)
    puts "  |       |       |       |"
    puts "3 |   #{board.board_cases_array[2].board_case_value}   |   #{board.board_cases_array[5].board_case_value}   |   #{board.board_cases_array[8].board_case_value}   |"
    puts "  |       |       |       |"
    puts "  "+("-"*25)

  end

end