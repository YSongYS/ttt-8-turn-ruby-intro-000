def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
  	false
  else
  	true
  end
end

def valid_move?(board, position)
 	spot = position.to_i - 1
 	if !position_taken?(board, spot) && spot.between?(0,8)
 		true
  else
 		false
  end
end

def move(board,index,token="X")
  board[index]=token
end

def input_to_index(input)
  index=input.to_i-1
  return index
end

