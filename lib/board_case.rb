class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :board_case_value, :board_case_id

  
  def initialize(board_case_value, board_case_id)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @board_case_value = board_case_value
    @board_case_id = board_case_id
  end
  
end
