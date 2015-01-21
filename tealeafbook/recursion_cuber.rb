require File.dirname(__FILE__) + '/asker.rb'

def cuber(number)
puts number
    if number <= 1
    	exit
    end
	if number > 1 && number <= 100
		cuber(number * number * number)
    end

end

cuber(@reply.to_i)