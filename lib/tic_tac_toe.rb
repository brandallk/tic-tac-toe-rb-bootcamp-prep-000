WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # top-right to bottom-left diagonal
  [2,4,6], # top-left to bottom-right diagonal
]

def display_board(board)
  cells = []
  i = 0
  while i <= 8
    cells[i] = " #{board[i]} "
    i += 1
  end
  row_1 = "#{cells[0]}|#{cells[1]}|#{cells[2]}"
  row_2 = "#{cells[3]}|#{cells[4]}|#{cells[5]}"
  row_3 = "#{cells[6]}|#{cells[7]}|#{cells[8]}"
  line = "-" * 11
  puts "#{row_1}\n#{line}\n#{row_2}\n#{line}\n#{row_3}"
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = "#{character}"
end

def position_taken?(board, index)
  board[index] != " " && board[index] != ""
end
