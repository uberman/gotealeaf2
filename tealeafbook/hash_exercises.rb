# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
nuclear_family = []
family = { uncles: ["bob", "joe", "steve"], 
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
       }
# family_data = { uncles: [{"bob", age: 22}, {"joe", age: 39}, {"steve", age: 26}],
                # sisters: [{"jane", age: 16}, {"jill", age: 13}, {"beth", age: 11}],
                # brothers: [{"frank", age: 14}, {"rob", age: 19}, {"david", age: 11}],
                # aunts: [{"mary", age: 32}, {"sally", age: 22}, {"susan", age: 20}]



brothers = family.select { |k,v| k == :brothers}
nuclear_family << brothers.fetch(:brothers)
sisters = family.select { |k,v| k == :sisters}
nuclear_family << sisters.fetch(:sisters)

arr1 = nuclear_family.flatten
puts "nuclear_family: #{arr1}"

immediate_family = family.select do 
 |k, v| k == :brothers || k == :sisters
end
arr2 = immediate_family.values.flatten
puts "immediate family: #{arr2}"

secondary_family = family.select do
 |k, v| k == :aunts || k == :uncles
 end 
 arr3 = secondary_family.values.flatten
 puts "secondary family: #{arr3}"

 # uncles = family_data.select do
 # 	|k, v| k == uncles
 # end
 # # puts uncles

 # uncles_ages = uncles.each {|k| k.fetch}
 # puts uncles_ages
 family.each do |k, v|
 	p k
 end
 family.each do |k, v|
 	p v
 end
 family.each do |k, v|
 	puts "key: #{k}, values: #{v}"
 end


 person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
 c = person.select{|k,v| k == :name}
p c
d = person[:name]
p d

# What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
# has_value? or value? method
test_hash = {device: "computer", location: "office"}
test = test_hash.has_value?("computer")
p test
# test_values = test_hash.values
# test_values
test2 = test_hash.value?("office")
p test2

if test_hash.value?("car")
	puts "Yes got it!"
else
	puts "No Way!"
end
