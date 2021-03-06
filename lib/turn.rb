# This method creates the layout of the board and accepts an array which will be the game board's positions or state
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# This method will convert the input from the user to an index on the board since index starts counting from 0
def input_to_index(input)
   input = input.to_i
   index = input - 1
end


#This method describes what must change in order to make a move
# In order to make a move, you must have the state of the board, the user selects a location as input, and applies their token to that spot
def move (board,position,token="X")
  board[position] = token
end

#This method will look at the board and go to the input to see if the position already has a token of X or O
def position_taken?(board,index)

  if board[index] == " "
   false
  else
   true
  end
end


#This method needs to make sure the move is valid by making sure the input is 1-9 and the position is open
  def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end


#This method allows the user to take a turn playing the game
def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  answer = input_to_index(answer)
  if valid_move?(board,answer)==true
      move(board,answer)
      display_board(board)
  else
    puts "This is an invalid move."
    turn(board)
  end
end
