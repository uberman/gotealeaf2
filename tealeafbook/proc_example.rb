talk = Proc.new do
	puts "I am talking."
end

talk.call


talk1 = Proc.new do |name|
	puts "I am talking to #{name}"
end

talk1.call "Bob"