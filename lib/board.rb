class Board
  # @@board = Array.new(10, '.')

  def initialize
    @board = Array.new(10, '.')
  end

  def get_board
    (1..3).each do |i|
      puts "#{@board[i]} #{@board[i + 1]} #{@board[i + 2]}"
    end
  end

  # def is_it_cell?(cell)
  #   if 0 < cell.to_i < 10
  #     return true
  #   else
  #     puts "Incorrect number! Try again"
  #     new_cell = gets.chomp
  #     is_it_cell?(new_cell)
  #   end
  # end

  def cell_is_not_busy?(cell)
    @board[cell] == '.'
  end

  # def player_make_move(cell)
  #   if cell_is_not_busy?(cell)
  #     @board[cell] = p1.mark
  #   else
  #     puts 'Choose other cells'
  #     new_cell = gets.chomp
  #     player_make_move(new_cell)
  #   end
  # end
end
