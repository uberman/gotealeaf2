require 'pry'
#get the operation
#get the two numbers
#do calculation
OPERATIONS = {
    "a" => "addition", 
    "s" => "subtraction", 
    "d" => "division", 
    "m" => "multiplication", 
    "o" => "modulo"
  }

def say(stuff)
  puts "=> #{stuff}"
end

def valid_integer?(number)
  !/^\d+$/.match(number).nil?
end

def get_number 
  say("Number to calculate?")
  number = gets.chomp
  while !valid_integer?(number)
    # number.is_a? Numeric
    say("Try again, number please")
    number = gets.chomp
  end
  number.to_f
end

def valid_operation?(operator)
  OPERATIONS.keys.include?(operator)
end

def validate_operation
  say("What operation would you like to calculate? \n
  A)ddition \n
  S)ubtraction \n
  M)ultiplication \n
  D)ivision \n
  mOdulo")
  operation = gets.chomp.downcase
  while !valid_operation?(operation)
    say("Try a legit operation, please: a, s, m, d, o")
    operation = gets.chomp
  end
  p "You chose #{OPERATIONS[operation]}"
  operation
end

calculation = validate_operation
first_number = get_number
second_number = get_number

case calculation 
when "a" 
  say("#{first_number} + #{second_number} = #{first_number + second_number}")
when "s"
  say("#{first_number} - #{second_number} = #{first_number - second_number}")
when "m"
  say("#{first_number} * #{second_number} = #{first_number * second_number}")
when "d"
  say("#{first_number} / #{second_number} = #{first_number / second_number}")
when "o"
  say("#{first_number} % #{second_number} = #{first_number % second_number}")
end