require "user"
require "villain"

puts "Welcome to the Real Life... Let's start with your name"

gamer_name = gets.chomp.capitalize!

gamer = User.new gamer_name #username set to gamer

cpu = Villian.new #every bad guy is "beast"

#villians = ["semi-colon", "Justin Bieber", "Darth Vader", "Bizzaro #{gamer.name}"]

# *ask the fight question
def fight_question
  fighting = true
  while fighting #aslong as fightin = true
    puts "Fight the beast or flee?! (Type 'fight' or 'flee')"
    fight_flee = gets.chomp.downcase
    if fight_flee == "fight"
      gamer.fight cpu
      fighting = false
    elsif fight_flee == "flee"
      gamer.flee
      fighting = false
    else
      puts "Unable to read command"
    end
  end
end
puts "Welcome to your life #{gamer.name}, Let's start your life!"

puts "You encounter your first problem of the day,brush your teeth or eat breakfast?(Type 'first' or 'second'): "

first_answer = gets.chomp.downcase
if first_answer == "first"
  puts "You go to the bathroom BUT SUDDENLY AN ALLIGATOR APPEARS FROM THE TOILET!"
  fight_question
elsif
	fist_answer == "second"
	puts "You go make breakfast BUT SUDDENLY A Racoon HAS YOUR BREAKFAST!"
	fight_question
end


puts "Second problem now arises, what is for lunch? (Type in 'chicken' or 'fish')"

second_answer = gets.chomp.downcase
if second_answer == "chicken"
  puts "The chicken is still alive and challenges you to a duel!"
  fight_question
elsif seond_answer == "second"
  puts "The fish throws it's scales at you like a ninja star!"
  fight_question
end

puts "Seriously #{gamer.name}! You've wasted a good amount of your time on a terminal game about real life..."
