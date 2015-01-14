
def number_checker(num)
	case
	when num < 0
		puts "#{num} is less than zero"
	when num <= 50
		puts "#{num} is between 0 and 50"
	when num <= 100
		puts "#{num} is between 50 and 100"
	else
		puts "#{num} is greater than 100"
	end
end

def number_checker1(num)
	case num
	when 0..50
		puts "#{num} is between 0 and 50"
	when 51..100
		puts "#{num} is between 50 and 100"
	else
	  if num < 0
	    puts "#{num} is less than zero"
	  elsif
	  	num > 100
	  	puts  "#{num} is greater than 100"
	  end

	end
end


puts "pick a number"
number = gets.chomp.to_i

number_checker(number)
number_checker1(number)
