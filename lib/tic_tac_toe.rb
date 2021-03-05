class TicTacToe
  def intialize(board=nil)
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
end
