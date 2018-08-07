  def welcome
    puts "Welcome to Tic Tac Toe!"
  end
  
  def play
    puts "Please enter 1-9"
    input = gets.strip
  end
  
class TicTacToe 
  WIN_COMBINATIONS = [
    [0, 1, 2]
    [3, 4, 5]
    [6, 7, 8]
    [0, 3, 6]
    [1, 4, 7]
    [2, 5, 8]
    [0, 4, 8]
    [2, 4, 6]
  ]
  
  def initialize(board = nil)
    @board = board || Array.new(9. " ")
  end
  
  def current_player
    turn_count % 2 
  end
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end