
# outputs text
#  name is the person speaking
#  statement is what to say
def say(name, statement)
  # we'll talk about optional method args later

  # if name.nil?
  #    puts statement
  # else
  #   puts "#{name.capitalize}: #{statement}"
  # end

  # ternary-if refactoring
  puts(name.nil? ? statement : "#{name.capitalize}: #{statement}")
end

# asks a question
#  question is the question
#  options is a string of options
def ask_question(question, options)
  say nil, "*" * 50
  say nil, question
  # DRY-up "Options: "
  say nil, "Options: #{options}"
  gets.chomp.downcase  # canonicalization
end

def handleSidekick(sidekick)
  # This could also be a case/when, but I wanted to show different types of flow control.
  if sidekick == "robin"
    say "Robin", "Holy rusted metal, Batman!"
  elsif sidekick == "batgirl"
    say "Batgirl", "Suit me up, Uncle Alfred"
  else
    say nil, "Fine, I'll pick one for you"
    sidekick = "robin"
  end
  
  ## invariant
  # sidekick must be valid and lowercase
end

def handleWeapon(weapon, sidekick)
  # if weapon == something
  #    do something
  # elsif weapon == something else
  #    do something else
  # else
  #    default something
  # end

  case weapon
  when "batarang"
    say sidekick, "Awesome! A Batarang! Thanks Batman!"
  when "fists"
    say sidekick, "I don't need a weapon. I'll just use my fists like you Batman!"
  when "flashlight"
    say sidekick, "Uh... thanks? I'll make sure to keep a light on you..."
  else
    say nil, "Don't be selfish. Share your toys with your sidekick!"
    weapon = "batarang"
  end

  # invariant
  ## the weapon must be valid here
end

def handleEnemy(enemy)
  case enemy
  when "riddler"
    say enemy, "Puzzle me this, Batman!"
  when "joker"
    say enemy, "Ha ha ha ha... ha ha!"
  when "penguin"
    say enemy, "Rweh rweh rweh... rweh..."
  else
    say nil, "This shouldn't happen."
  end

  # invariant
  ## the enemy must be valid
end

def show_intro
  say nil, "After all of your hard work you've become Batman!"
end

##### ignore stuff above this line, we'll move this to a module later ###

show_intro

# question 1
sidekick = ask_question("Who will be your sidekick?", "Batgirl or Robin")
handleSidekick(sidekick)

# question 2
weapon = ask_question("Awesome choice! Let's get your sidekick a weapon.", "batarang, fists, flashlight")
handleWeapon(weapon, sidekick)

# question 3
# sanitizing the inputs
#until (enemy == "joker" || enemy == "penguin" || enemy == "riddler")
begin
  enemy = ask_question("Who should we fight first?", "Joker, Penguin, Riddler")
end until ["riddler", "penguin", "joker"].include? enemy
handleEnemy(enemy)