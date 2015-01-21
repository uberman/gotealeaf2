names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

# names.each { |x| puts x.upcase}
# names.each { |name| puts name.length}
# names.each { |x| puts x.downcase}


names.collect { |x| puts "collect: " + x + '!'}
names.map { |x| puts "map: " + x + '!'}
names.map.with_index { |x, i| puts x * i}
names

a = ["a", "b", "c", "d"]
a.collect { |x| puts x + "!"}

# collect { |item| block } → new_ary click to toggle source
# collect → Enumerator
# Invokes the given block once for each element of self.

# Creates a new array containing the values returned by the block.

# map { |item| block } → new_ary click to toggle source
# map → Enumerator
# Invokes the given block once for each element of self.

# Creates a new array containing the values returned by the block.

x = 1
names.each do |name|
	puts "#{x}. #{name}"
	x += 1
end

