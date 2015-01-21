test_arr = [1,2,3,4,5,6,7,8,9,10]
#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
[1,2,3,4,5,6,7,8,9,10].each {|n| p n}

#2 Same as above, but only print out values greater than 5.
[1,2,3,4,5,6,7,8,9,10].each {|n| p n if n > 5}

#3 Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
arr1 = []
[1,2,3,4,5,6,7,8,9,10].map {|n| arr1.push(n) if n % 2 != 0}
p "arr1 is #{arr1}"
new_arr =[]
[1,2,3,4,5,6,7,8,9,10].each {|n| new_arr << n if n %2 != 0}
p "new_arr is #{new_arr}"
another_way_arr = test_arr.select {|n| n %2 != 0}
p "another_way_arr is #{another_way_arr}"

#4 Append "11" to the end of the original array. Prepend "0" to the beginning.
appended_arr = test_arr << 11
p appended_arr
prepended_arr = test_arr.unshift(0)
p prepended_arr

#5 Get rid of "11". And append a "3".
p "appended_arr before .pop:    #{appended_arr}"
appended_arr.pop
p "appended_arr after .pop:     #{appended_arr}"
appended_arr.push(3)
p "appended_arr after .push(3): #{appended_arr}"
#6 Get rid of duplicates without specifically removing any one value.
nodupes = appended_arr.uniq
p "no dupes in appended_arr: #{nodupes}"

#7 What's the major difference between an Array and a Hash?
# array is an collection of data ordered by index
# hash is a collection of data, referenced by key

#8 Create a Hash using both Ruby syntax styles.
# hash1 = {:key => "value"}
# hash2 = {key: "value"}
# hash3 = {"key" => "value"}

#9 Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}
p h[:b]
h[:e] = 5
p h
new_h = {}
h.map do |k,v|
	new_h[k] = v if v > 3.5
end
puts "before removing key/value pairs with value < 3.5 : \n #{h}"
puts "new array containing key/value pairs with value >= 3.5: \n #{new_h}"

#better version
h1 = {a:1, b:2, c:3, d:4}
h1.delete_if  {|k,v| v < 3.5 }
puts h1

#10 Can hash values be arrays? Can you have an array of hashes? (give examples)
# hashes can be made of arrays
hash_of_arrays = {cars: ["limo","sedan","beater"], motorcycles: ["chopper","rice rocket"], bicycles: "mountain"}
array_of_hashes = [{student: "joe"}, {student: "mary"}, {student: "gina"}]


# Best Ruby API
# ruby docs (http://www.ruby-doc.org/core-2.2.0/)
# well organized, clear, complete, multiple ruby versions

#12 Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


