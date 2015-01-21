y = 0

while y <= 10
	if y == 7
		y += 1
		break
	elsif y.odd?
		puts y
	end
	y += 1
end
puts "Super done!"