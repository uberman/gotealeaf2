array = [1,3,5,7,9,11]
number = 3

array.select {|n| puts n == number}

if array.include?(number)
	puts "#{number} is in array"
end

array.each {|n| puts "#{number} is in array" if n == number}

array.each do |num|
	if num == number
		puts "#{number} is in array"
	end
end


arr = ["b","a"]
arr = arr.product(Array(1..3))
[["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 

arr = ["b","a"]
arr = arr.product([Array(1..3)])
arr = ["b",[1,2,3],"a"[1,2,3]]
arr.first.delete(arr.first.last)

arr = [[1,2,3],"a"[1,2,3]]



2.0.0-p481 :001 > arr = ["b","a"]
 => ["b", "a"] 
2.0.0-p481 :002 > arr = arr.product([Array(1..3)])
 => [["b", [1, 2, 3]], ["a", [1, 2, 3]]] 
2.0.0-p481 :003 > arr.last.last
 => [1, 2, 3] 
2.0.0-p481 :004 > arr.last.last.last
 => 3 
2.0.0-p481 :005 > arr.last.last.delete(arr.last.last.last)
 => 3 
2.0.0-p481 :006 > arr


arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0]
puts last.first


arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)
> 3
2. arr.index[5]
> undefined method
3. arr[5]
> 8


string = "Welcome to Tealeaf Academy!"
a = string[6]
> a = e
b = string[11]
> b = T
c = string[19]
> c = A


# Write a program that iterates over an array and builds a new 
# array that is the result of incrementing each value in the original 
# array by a value of 2. You should have two arrays at the end of this 
# program, The original array and the new array you've created. Print 
# both arrays to the screen using the p method instead of puts.
arr1 = [1,2,3,4,5]
arr2 = []
arr1.map do |num|
	arr2.push(num + 2)
	# arr2 << (num + 2)
end
p arr1
p arr2
