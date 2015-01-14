puts "what 4 digit number?"
x = gets.to_i

thou = x / 1000 
puts "#{thou} thousands"

hund = x % 1000 / 100
puts "#{hund} hundreds"

tens = x % 1000 % 100 / 10
puts "#{tens} tens"

ones = x % 1000 % 100 % 10 / 1
puts "#{ones} ones"