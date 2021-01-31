class BoardCase
  # board_case_value is "X", "O" or " ". board_case_id is one of 9 options "A1"-"C3"
  attr_accessor :board_case_value, :board_case_id

  
  def initialize(board_case_value, board_case_id)
    @board_case_value = board_case_value
    @board_case_id = board_case_id
  end
  
end
