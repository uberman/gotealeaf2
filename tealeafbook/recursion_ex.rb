def doubler(start)
	puts start * 2
end

# doubler(2)
# doubler(4)


def doubler_better(start)
	puts start
	if start < 10
		doubler_better(start * 2)
	end
end

doubler_better(2)
# puts "******"
# doubler_better(3)
# puts "******"
# doubler_better(7)
# puts "******"
# doubler_better(10)
# def factorial(start)
# 	if start != 0
# 	  factorial(start * start)
#       start -= 1
#     end
# puts start
# end


# factorial(5)

# def adder(start)
# 	puts start
# 	if start < 10
# 		adder(start + 1)
# 	end
# end
# adder(9)
# adder(3)