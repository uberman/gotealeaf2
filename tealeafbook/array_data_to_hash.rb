#12 Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["bart@thesimpsons.com", "100 Springville Rd", "222-222-2222"],
            ["winnie@100acrewood.com", "Trespasser Will Rd", "333-123-1234"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Bart Simpson" => {}, "Winnie the Pooh" => {}}

t = contacts.length.to_i

while t >= 0 
   	x = contacts.keys[t - 1]
	contacts[x][:email]   = contact_data[t-1][0]
	contacts[x][:address] = contact_data[t-1][1]
	contacts[x][:phone]   = contact_data[t-1][2]
 	t -= 1
end
 puts contacts

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]
# puts contacts


#Solution 1 -- single record
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#Solution 2 -- multi record
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end