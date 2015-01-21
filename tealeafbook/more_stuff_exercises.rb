def matcher(word)
  if word.downcase.match "lab"
  	puts "found 'lab' in #{word}"
  else
  	puts "no luck"
  end
end

matcher("laboratory")
matcher("experiment")
matcher("Pans Labyrinth")
matcher("elaborate")
matcher("polar bear")
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }