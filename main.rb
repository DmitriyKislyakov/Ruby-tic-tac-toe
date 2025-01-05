require_relative 'lib/game'
require_relative 'lib/players'

board = Array.new(10, '.')
# board[1] = 'X'
# board[9] = 'O'

(1..3).each do |i|
  puts "#{board[1 * i]} #{board[2 * i]} #{board[3 * i]}"
end

Game.new.introduce
Player.new.introduce
