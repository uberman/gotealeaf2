
def caps_method(string)
    if string.length > 10
   	    puts string.upcase
	  else
		puts string
	end
end

caps_method("hi")
caps_method("meow")
caps_method("hi there")
caps_method("supercalifragilistic")
caps_method("this is 10 letters or more")
caps_method("this is 9.")
caps_method("this is 9..")