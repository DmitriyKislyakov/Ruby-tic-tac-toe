class Game
  def introduce
    puts 'The Game is begin!'
  end

  def your_name
    puts 'Enter your name:'
    name = gets.chomp
    return unless name == ''

    'You'
  end
end
