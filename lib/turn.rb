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
   index = input.to_i -1
end


#This method describes what must change in order to make a move
# In order to make a move, you must have the state of the board, the user selects a location as input, and applies their token to that spot
def move(board, input, token="X")
  index = input_to_index(input)
  board[index] = token
end

#This method will look at the board and go to the input to see if the position already has a token of X or O
def position_taken?(board,input)
  index = input_to_index(input)
  if board[index] != " "
    return true
  else
    return false
  end
end


#This method needs to make sure the move is valid by making sure the input is 1-9 and the position is open
def valid_move?(board, number_entered)
   index = input_to_index(number_entered)
   index.between?(0,8) && !position_taken?(board,number_entereed)
end


#This method allows the user to take a turn playing the game
def turn(board)
  puts "Please enter a move 1-9:"
  answer = gets.chomp
  puts "Please enter your token X or O:"
  token = gets.chomp
  if valid_move?(board, answer)
      move (board, answer, token=token)
      display_board(board)
  else
    puts "This is an invalid move."
    turn(board)
  end
end
