
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def input_to_index(input)
  position = (input.to_i) -1
  return position
end


def position_taken?(board,answer)
     answer = answer.to_i

     if board [answer] == "X" || board[answer] =="O"
     puts "That position is taken."
       return true
     else
        return false
     end
end


def valid_move?(board, number_entered)

number_entered = input_to_index(number_entered)

 number_entered.between?(0, 8) && !(position_taken?(board,number_entered))

end


def move (array, position, char="X")
  array [position] = char
end


def turn(board)
  puts "Please enter a token X or O:"
  token = gets.chomp
  puts "Please enter 1-9:"
  answer = gets.chomp
  index = input_to_index(answer)
   if valid_move?(board,answer)
     move(board,index,token)
     display_board(board)
  else
    puts "That is an invalid entry!"
    turn(board)
  end
end
