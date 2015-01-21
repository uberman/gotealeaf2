

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def wordsplitter(word)
	word.each_char.sort.join
end

anagrams= {}
  words.each do |word|
  	key = wordsplitter(word)
  	if anagrams.has_key?(key)
  		anagrams[key].push(word)
  		# anagrams << word
  	else
  		anagrams[key] = [word]
  end
end

# p anagrams

anagrams.each do |k,v|
puts "-------"
p v

end