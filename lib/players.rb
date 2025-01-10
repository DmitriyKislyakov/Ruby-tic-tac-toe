class Player
  def initialize(name, line = [])
    @name = name
    @line = line
  end

  def introduce
    puts 'Hello! What is your name?'
  end
end
