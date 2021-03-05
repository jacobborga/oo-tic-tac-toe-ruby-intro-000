class TicTacToe
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def input_to_index(user_input)
    return (user_input.to_i - 1)
  end

  def move(index, player)
    @board[index] = player
  end

  def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
      return true
    end
    return false
  end

  def valid_move?(index)
    if @board[index] == " " || @board[index] == ""
      return true
    end
    return false
  end

  def turn
    puts "Please enter a number 1-9: "
    @user_input = gets.chomp
    @user_input = input_to_index(@user_input)
    if valid_move?
      move
      display_board
    else
      puts "Please enter a valid input 1-9: "
      turn
    end
  end
end
