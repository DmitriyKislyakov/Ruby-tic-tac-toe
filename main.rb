require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'

def player_make_move(cell)
  if @board.cell_is_not_busy?(cell)
    @board[cell] = p1.mark
  else
    puts 'Choose other cells'
    new_cell = gets.chomp
    player_make_move(new_cell)
  end
end

# board = Array.new(10, '.')
# # board[1] = 'X'
# # board[9] = 'O'

# (1..3).each do |i|
#   puts "#{board[1 * i]} #{board[2 * i]} #{board[3 * i]}"
# end

game = Game.new
board = Board.new
board.get_board
name = game.your_name
p1 = Player.new(name)
p1.introduce
p2 = Player.new('Comp', 'O')
p2.introduce
puts board.cell_is_not_busy?(1)
player_make_move(1)
board.get_board
