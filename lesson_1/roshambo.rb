require 'pry'
#1 user picks rock, paper, or scissors
#2 computer displays rock, paper, scissors randomly
#3 evaluate winner/loser
#4 request repeat

WEAPONS = {"r" => "rock", "p" => "paper", "s" => "scissors"}

def say(stuff)
  puts "=> #{stuff} <="
end

def battle_calculator(player_weapon, computer_weapon)
  if (player_weapon == computer_weapon ) 
     "tie"
  elsif (player_weapon == "rock" && computer_weapon == "scissors") || (player_weapon == "scissors" && computer_weapon == "paper") || (player_weapon == "paper" && computer_weapon == "rock")
     "win"
  else 
     "lose"
  end
end

say("Welcome to Ruby Roshambo! What's your name?")
player_name = gets.chomp
say("Hey #{player_name}, let's play Ro Sham Bo!")

begin
  begin
    say("Choose your weapon! (r/p/s)")
    weapon = gets.chomp.downcase
  end until WEAPONS.keys.include?(weapon)
  player_weapon = WEAPONS[weapon]
  computer_weapon = WEAPONS.values.sample
  say("#{player_name} chooses #{player_weapon}, Computer chooses #{computer_weapon}")
  battle_calculator(player_weapon,computer_weapon)
  battle_result = battle_calculator(player_weapon,computer_weapon)

  if battle_result == "tie"
    say("Both opponents choose #{player_weapon}... It's a tie!!")
  elsif battle_result == "win"
    say("#{player_name}'s #{player_weapon} beats Computer's #{computer_weapon}!")
  else
    say("Computer's #{computer_weapon} beats #{player_name}'s #{player_weapon}!")
  end

  say("Continue? y/n")
  continue = gets.chomp.downcase
end while continue == "y"

say("Have a nice day!")