def countdown(number)
	while number >= 0
		puts number
		number -= 1
	end
end

# countdown(9)

def countup(number)
	while number <= 100
		puts number
		number += 1
	end
end

# countup(1)


number = 0
loop do 
		number += 1
	if number % 5 == 0
		next
	end
	puts "#{number}"
	if number >= 100
		break
	end
end
