#1 user picks rock, paper, or scissors
#2 computer displays rock, paper, scissors randomly
#3 evaluate winner/loser
#4 request repeat

player_weapon = ""
def say(stuff)
  puts "=> #{stuff} <="
end

def choose_weapons(num)
  case num
    when 0
      "rock"
    when 1
      "paper"
    when 2
      "scissors"
    end
end

def battle(player_weapon, computer_weapon)
  player_name = @player_name
  case 
  when player_weapon == 0 && computer_weapon == 0
    say("Rock vs rock! Tie!")
  when player_weapon == 0 && computer_weapon == 1
    say("Computer's paper beats #{player_name}'s rock")
  when player_weapon == 0 && computer_weapon == 2
    say("#{player_name}'s rock beats Computer's scissors")
  when player_weapon == 1 && computer_weapon == 0
    say("#{player_name}'s paper beat's Computer's rock")
  when player_weapon == 1 && computer_weapon == 1
    say("Paper vs paper! Tie!")
  when player_weapon == 1 && computer_weapon == 2
    say("Computer's scissors beats #{player_name}'s paper")
  when player_weapon == 2 && computer_weapon == 0
    say("Computer's rock beats #{player_name}'s scissors")
  when player_weapon == 2 && computer_weapon == 1
    say("#{player_name}'s scissors beats Computer's paper")
  when player_weapon == 2 && computer_weapon == 2
    say("Scissors vs scissors! Tie!")
  end
end

say("Welcome to Ruby Roshambo! What's your name?")
@player_name = gets.chomp
say("Hey #{@player_name}, let's play Ro Sham Bo!")

begin

  begin
    say("Choose your weapon! (r/p/s)")
    weapon = gets.chomp.downcase
  end until weapon == "r" || weapon == "p" || weapon == "s"

  if weapon == "r"
    player_weapon = 0
  elsif weapon ==  "p" 
    player_weapon = 1
  elsif weapon == "s"
    player_weapon = 2
  end

  computer_weapon = (rand(0..2))
  say("#{@player_name} chooses #{choose_weapons(player_weapon)}, Computer chooses #{choose_weapons(computer_weapon)}")
  battle(player_weapon,computer_weapon)

  say("Continue? y/n")
  continue = gets.chomp.downcase
end while continue == "y"

say("Have a nice day!")