puts "whats your number?"
number = gets.chomp.to_i


# if number < 1
# 	puts "#{number} needs to be an integer, not a float"
# 	exit
# end
def say_negative_integer(num)
	puts "#{num} needs to be positive integer"
end

def say_between_0_50(num)
	puts "#{num} is between 0 and 50"
end

def say_between_50_100(num)
	puts "#{num} is between 50 and 100"
end

def say_morethan_100(num)
	puts "#{num} is greater than 100"
end

answer = case 
    when number < 0
	    say_negative_integer(number)
	when number < 50
		say_between_0_50(number)
	when number <= 100
		say_between_50_100(number)
	else
		say_morethan_100(number)
	end


puts answer