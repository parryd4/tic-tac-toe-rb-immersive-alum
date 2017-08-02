WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, player_token)
  board[index] = player_token
  # thanks Ruby for returning entire array when you assign only 1 slot of array
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, position)
  board_positions = 0..9
  board_positions.include?(position) && board[position] == " "
end

def turn(board)
  loop do
    puts "Pick a position"
    position = input_to_index(gets.chomp)
    if valid_move?(board, position)
      move(board, position, "X")
      break 
    end
  end
end
