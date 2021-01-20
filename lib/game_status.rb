# Helper Method


def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won(board)
  xpos = []
  opos = []
  position_number = 0
  board.each do |pos, index|
    puts index
    if position_taken?(board, pos.to_i)
      pos == 'X' ? xpos << position_number : opos << position_number;
    end
    position_number += 1
  end
  puts xpos
  WIN_COMBINATIONS.each{|comb|
    if comb.all?{|pos| xpos.include?(pos) || opos.include?(pos)}
      puts comb
      return comb
    else
      puts'false'
      return false
    end
  }
end

won([" ", "X", "X", "O", "O", "O", " ", " ", " "])
