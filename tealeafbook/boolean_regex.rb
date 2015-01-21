def has_a_b?(string)
	if string.match /b/
		puts "we have a match!"
	else
		puts "no match, move along"
	end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("soccer")