
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  user_input = user_input.to_i
  index = user_input - 1
  #return index
end

def move (board,input,player="X")
  board[input] = player
end

def valid_move? (board,index)
  result = ""
  position_state = position_taken?(board,index)
  if index.between?(0,8) && position_state == false
    result = true
  else
    result = false
  end
return result
end

def position_taken? (board,index)
  index = index
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end

end

def turn(board)
  valid = false
  until valid == true
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    valid = valid_move?(board,index)
  end
  move(board,index)
  display_board(board)
end
