class Player
  # @@players = 0
  def initialize(name, mark = 'X', line = [])
    @name = name
    @mark = mark
    @line = line
  end

  attr_accessor :line
  attr_reader :mark, :name

  def introduce
    puts "welcome #{@name}"
    puts "Your mark is #{@mark}"
  end
end
