puts "pick a number, any number"
number = gets.chomp.to_i
if number < 0
	puts "number must be positive integer!"
	exit
end

if (number >= 0) && (number <= 50)
	puts "number is between 0 and 50"
elsif (number >= 51) && (number <= 100)
	puts "number is between 50 and 100"
else
	puts "number is greater than 100"
end