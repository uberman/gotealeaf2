result = {}
words = ["mode","dome","smart","owls","stupid","demo","slow","trams","marts"]

words.each do |word|

	key = word.split("").sort.join

	if result.has_key?(key)
		result[key] << "#{word}"
	else
		result[key] = [word]
	end
end

result.each do |k ,v |
	puts "#{k}: " + v.to_s
	p "------------------"
end
