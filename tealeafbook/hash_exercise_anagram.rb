#  Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
anagram_hash = {}
answer = []
def wordsplitter(word)
	word.each_char.sort.join
end

words.each do |w|
    
    x = wordsplitter(w)
     p x
    if anagram_hash.has_key?(x)
    	# if key already exists, append to values
    	anagram_hash.(x) << "#{w}"
    else
    	# p x
    	p w
    	# if key does not exist, add new key
     # anagram_hash.(x) = ["#{w}"]
    end
# p anagram_hash
end





 #    new_hash = { wordsplitter("#{w}" => "#{w}")}
    
 #    if 
 #    anagram_hash.merge!(new_hash)

 #    anagram_hash.each { |k,v|
 #    	if key.values == anagram_hash.value
 #    }


 # end


  puts anagram_hash

# # 1. iterate through array
# # 2. parse through array, to create a hash by alphabetical order
#  e.g. "mode"(original) becomes "demo"(alpha-order)
#  the alphabetical word will be the key to the hash 
#  << here's where I did it wrong, I made the ORIGINAL the key
# # 3. for each alpha-order word, if it does not exist, create new key
#  otherwise, append original word values to the existing key
#  puts values
# # 4. compare each key to 

