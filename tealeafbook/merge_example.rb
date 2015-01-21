hash1 = { students: ["Joe", "Mark", "Paul"],
          teachers: ["Mr. Smith", "Ms. Jones", "Dr. Tyler"]}

hash2 = { highschool: ["Carter", "Longfellow"],
        gradeschool: ["Balboa", "St. Helens"]}

subs = { students: ["Aaron", "Mellie"],
         teachers: ["Professor Ewell", "Mrs. Kidwell"]}

hash_merged = hash1.merge(hash2)
# puts hash_merged
# puts hash1
# puts hash2

substitute_teachers = hash1.merge(subs) {|k, v| k == :teachers}
# puts substitute_teachers

h = {a: 1}
h2 = { b: 2}
h3 = {c: 3}

a = [h, h2, h3]

merged = h.merge(h2).merge(h3)
# p merged
merged2 = a.inject {|k, v| k.merge(v)}

# p merged2


car_hash1 = { make: "toyota", model: "corolla", year: "2003"}

car_hash2 = { make: "chevy", model: "pickup", year: "2009"}

merged_carhash = car_hash1.merge(car_hash2)
# p merged_carhash
# p car_hash1

# merged_carhash2 = car_hash1.merge!(car_hash2)
# p merged_carhash2
# p car_hash1

# p car_hash1
merged_carhash2_take2 = car_hash1.merge!(car_hash2) #{|k,vnew,vold| vold}
# p merged_carhash2_take2
# p car_hash1
# p car_hash2

car_hash3 = { make: "bmw"}
car_hash4 = { model: "330ci"}
p car_hash3
p car_hash4
merged_carhash3 = car_hash3.merge(car_hash4)
p merged_carhash3
p car_hash3
p car_hash4