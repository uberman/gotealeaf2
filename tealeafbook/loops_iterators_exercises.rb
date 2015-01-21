# x = [1,2,3,4,5]
# x.each do |a|
# 	a + 1
# end

#returns 2,3,4,5,6
# puts return
begin
	puts "gimme money"
    reply = gets.chomp
end while reply != "STOP" 
	

begin
	puts "do you want to do that again?"
	answer = gets.chomp
end while answer == "Y" || answer == "y"

x=9
puts x
begin 
	puts "pick a number between 1 and 10"
	answer = gets.chomp.to_i
end while answer != x

a = ""
while a != "YES" do
	puts "do i bother you?"
	a = gets.chomp
end

i = 1
array = ["Lord of the Flies", "Sword of Shannara","Count of Montecristo"]
array.each_with_index {|x,i| puts "#{i+1}. #{x}"}

y = 1
array.each do |name|
	puts "#{y}. #{name}"
	y += 1
end


#recursion countdown