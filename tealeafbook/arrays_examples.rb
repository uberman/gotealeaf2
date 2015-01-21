def mutate(array)
	array.pop
end

def not_mutate(array)
	array.select { |i| i > 3 }
end

a = [1,2,3,4,5,6]
#mutate(a)
not_mutate(a)


puts a