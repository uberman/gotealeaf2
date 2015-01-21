
def fibonacci(num)
	if num < 2
		 num
	else
		fibonacci(num - 1) + fibonacci(num - 2)
	end
	# puts num
end

puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(6)
