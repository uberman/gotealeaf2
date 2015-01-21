begin
	#perform some dangerous operation
rescue
	#do this if the operation fails
	#log the error
end


names = ['bob','joe','steve',nil,'frank']

names.each do |name|
	begin
		puts "#{name}'s name has #{name.length} letters in it."
	rescue
		puts "something went bad!"
	end
end
