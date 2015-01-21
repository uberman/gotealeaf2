# zero = ['car','shoe']
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't touch this!"
puts "After each call"