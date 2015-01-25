result = {}
words = ["mode","dome","smart","owls","stupid","demo","slow","trams","marts"]

words.each do |word|

	key = word.split("").sort.join
    #if the key exists in the result, append the word
	if result.has_key?(key)
		result[key] << "#{word}"
	else
	#if the key does not exist in the result, add new key
		result[key] = [word]
	end
end

result.each do |k ,v |
	puts "#{k}: " + v.to_s
	p "------------------"
end
