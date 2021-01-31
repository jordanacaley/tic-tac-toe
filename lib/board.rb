require_relative 'board_case.rb'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  attr_accessor :board_cases_array
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


  def initialize
    #TO DO :
    #Create 9 instances of BoardCases
    #Store these instances in an array that is the attr_accessor of the class
    board_case_A1 = BoardCase.new(" ", "A1")
    board_case_A2 = BoardCase.new(" ", "A2")
    board_case_A3 = BoardCase.new(" ", "A3")
    board_case_B1 = BoardCase.new(" ", "B1")
    board_case_B2 = BoardCase.new(" ", "B2")
    board_case_B3 = BoardCase.new(" ", "B3")
    board_case_C1 = BoardCase.new(" ", "C1")
    board_case_C2 = BoardCase.new(" ", "C2")
    board_case_C3 = BoardCase.new(" ", "C3")
    @board_cases_array = [board_case_A1, board_case_A2, board_case_A3, board_case_B1, board_case_B2, board_case_B3, board_case_C1, board_case_C2, board_case_C3]
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end