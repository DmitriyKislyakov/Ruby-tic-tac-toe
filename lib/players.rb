class Player
  @@players = 0
  def initialize(name)
    @name = name
  end

  def introduce
    puts "welcome #{@name}"
  end
end
