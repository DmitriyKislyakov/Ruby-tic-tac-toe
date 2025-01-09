class Board
  @@board = Array.new(10, '.')
    
    def initialize
        @board = @@board
    end
    
    def get_board
        (1..3).each do | i |
        puts "#{@board[i]} #{@board[i + 1]} #{@board[i + 2]}"
        end
    end
end