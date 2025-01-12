# require_relative 'lib/game'
# require_relative 'lib/player'
# require_relative 'lib/board'

# def player_make_move(cell)
#   if @board.cell_is_not_busy?(cell)
#     @board[cell] = p1.mark
#   else
#     puts 'Choose other cells'
#     new_cell = gets.chomp
#     player_make_move(new_cell)
#   end
# end

# # board = Array.new(10, '.')
# # # board[1] = 'X'
# # # board[9] = 'O'

# # (1..3).each do |i|
# #   puts "#{board[1 * i]} #{board[2 * i]} #{board[3 * i]}"
# # end

# game = Game.new
# board = Board.new
# board.get_board
# name = game.your_name
# p1 = Player.new(name)
# p1.introduce
# p2 = Player.new('Comp', 'O')
# p2.introduce
# puts board.cell_is_not_busy?(1)
# player_make_move(1)
# board.get_board

class Player
  attr_accessor :name, :line

  def initialize(name, mark = 'X', line = [])
    @name = name
    @mark = mark
    @line = line
  end

  def intro
    puts 'Whats your name?'
    Player.new(gets.chomp, 'X')
  end
end

@board = Array.new(10) { '.' }
def get_board(b)
  puts "#{b[1]} #{b[2]} #{b[3]}\n#{b[4]} #{b[5]} #{b[6]}\n#{b[7]} #{b[8]} #{b[9]}"
end

def player_make_move
  puts 'Choose free cell:'
  cell = gets.chomp.to_i
  @board[cell] = 'X'
  @player.line.push(cell)
  puts @player.line
end

def computer_make_move
  cell = rand(1..9)
  @board[cell] = 'O'
  @computer.line.push(cell)
  puts @computer.line
end

def winline?(b)
  b[1] == b[2]
  # return ((b[1]==b[2]==b[3]) or (b[4]==b[5]==b[6]) or (b[7]==b[8]==b[9])or(b[1]==b[4]==b[7])or(b[2]==b[5]==b[8])or(b[3]==b[6]==b[9])or(b[1]==b[5]==b[9])or(b[3]==b[5]==b[7]))
end

get_board(@board)
@player = Player.new('A', 'X')
@computer = Player.new('Comp', 'O')
player_make_move
get_board(@board)
computer_make_move
get_board(@board)
puts winline?(@board)
