require_relative 'lib/game'
require_relative 'lib/players'
require_relative 'lib/board'

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
p2 = Player.new('Comp')
p2.introduce
