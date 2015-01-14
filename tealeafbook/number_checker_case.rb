puts "whats your number?"
number = gets.chomp.to_i

if number < 0
	puts "#{number} needs to be positive integer"
	exit	
end

if number < 1
	puts "#{number} needs to be an integer, not a float"
	exit
end

answer = case 
	when (number >= 0) && (number < 50)
		"#{number} is between 0 and 50"
	when (number >= 50) && (number <= 100)
		"#{number} is between 50 and 100"
	else
		"#{number} is larger than 100"
	end

puts answer