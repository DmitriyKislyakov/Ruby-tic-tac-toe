class Game
  def introduce
    puts 'The Game is begin!'
  end

  def your_name
    puts "Enter your name:"
    name = gets.chomp
    if name == ""
      return "You"
    end
  end
end
