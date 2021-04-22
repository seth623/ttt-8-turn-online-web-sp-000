def display_board(array = [' ',' ',' ',
                           ' ',' ',' ',
                           ' ',' ',' ',])
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts         "-----------"
  puts         " #{array[3]} | #{array[4]} | #{array[5]} "
  puts         "-----------"
  puts         " #{array[6]} | #{array[7]} | #{array[8]} "
end


def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif index > 8 || index < 0
    return false
  else
    return true
  end
end


def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  elsif board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  end
end


def input_to_index(input)
  integer = input.to_i
  result = integer - 1
  return result
end

#move
def move(array, index, value = 'X')
    array[index] = value
    input_to_index(index)
    array[index] = value
    display_board(array)
end


#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  valid_move?(board, input)
  move(board, input)
end
