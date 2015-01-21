def fibonacci(number)
	if number < 2
		number
	else 
		fibonacci(number - 1) + fibonacci(number - 2)
	end
	# puts number
end
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(6)
# puts fibonacci(7)
# puts fibonacci(8)
# puts fibonacci(9)
# puts fibonacci(10)
# puts fibonacci(11)
# puts fibonacci(12)

#fibonacci(6)
# if 6 < 2
# 	6
# else
# (6-1) + (6-2)
# end
# 9
