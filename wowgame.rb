
def say(name, statement)
  
  puts(name.nil? ? statement : "#{name.capitalize}: #{statement}")
end

def ask_question(question, options)
  say nil, "*" * 50
  say nil, question
  
  say nil, "Options: #{options}"
  gets.chomp.downcase  
end

def handleSidekick(sidekick)
  
  if sidekick == "robin"
    say "Robin", "Holy rusted metal, Batman!"
  elsif sidekick == "batgirl"
    say "Batgirl", "Suit me up, Uncle Alfred"
  else
    say nil, "Fine, I'll pick one for you"
    sidekick = "robin"
  end
  
 
end

def handleWeapon(weapon, sidekick)
  
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

 
end

def show_intro
  say nil, "After all of your hard work you've become Batman!"
end



show_intro

# question 1
sidekick = ask_question("Who will be your sidekick?", "Batgirl or Robin")
handleSidekick(sidekick)

# question 2
weapon = ask_question("Awesome choice! Let's get your sidekick a weapon.", "batarang, fists, flashlight")
handleWeapon(weapon, sidekick)

# question 3

begin
  enemy = ask_question("Who should we fight first?", "Joker, Penguin, Riddler")
end until ["riddler", "penguin", "joker"].include? enemy
handleEnemy(enemy)