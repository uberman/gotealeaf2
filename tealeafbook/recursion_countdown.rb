
# puts "gimme"
# num = gets.chomp.to_i

def recursion_countdown(num)
puts num    
     if num > 0
 	  # puts "#{num}" << not here, because this doesnt include 0
 	  recursion_countdown(num - 1)

    end

end

recursion_countdown(9)
# recursion_countdown(-3)
# recursion_countdown(20)