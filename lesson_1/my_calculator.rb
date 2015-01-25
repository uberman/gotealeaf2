def say(stuff)
  puts "=> #{stuff}"
end

say("What operation would you like to calculate? \n
oA)ddition \n
S)ubtraction \n
M)ultiplication \n
D)ivision \n
mOdulo")
operation = gets.chomp

say("What is the first number of your operation?")
num1 = gets.chomp.to_i
say("What is the second number of your operation?")
num2 = gets.chomp.to_i
case operation 
when "A" 
  say("#{num1} + #{num2} = #{num1 + num2}")
when "S"
  say("#{num1} - #{num2} = #{num1 - num2}")
when "M"
  say("#{num1} * #{num2} = #{num1 * num2}")
when "D"
  say("#{num1} / #{num2} = #{num1 / num2}")
when "O"
  say("#{num1} % #{num2} = #{num1 % num2}")
end