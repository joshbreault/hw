def say(name, statement)
 
  puts(name.nil? ? statement : "#{name.capitalize}: #{statement}")
end

def ask_question(question, options)
  say nil, "*" * 70
  say nil, question
  say nil, "Options: #{options}"
  gets.chomp.downcase  
end

def handleFaction(faction)
  
  if faction == "horde"
    say "Horde", "For the Horde!"
  elsif faction == "alliance"
    say "Sorry", "Horde only!"
  else
    say nil, "Then I will choose! For the Horde!"
    faction = "horde"
  end
  
end

def handleRace(race, faction)

  case race
  when "blood elf"
    say race, "Remember the Sunwell!"
  when "troll"
    say race, "Stay away from da Voodoo!"
  when "tauren"
    say race, "The wind guides you."
  when "undead"
    say race, "Trust no one."
  when "orc"
    say race, "Blood and thunder!"
  else
    say nil, "Fine, then you can be Undead!"
    faction = "undead"
  end


end

def handleEnemy(enemy)
  case enemy
  when "illidan"
    say enemy, "You are not prepared!"
  when "lich king"
    say enemy, "I will show you the justice of the grave!"
  when "garrosh hellscream"
    say enemy, "I will have my world!"
  else
    say nil, "Then I choose Illidan!"
    enemy = "illidan"
  end


end

def show_intro
  say nil, "The world of Azeroth needs you!"
end


show_intro

# question 1
faction = ask_question("What Faction will you choose?", "Horde or Alliance")
handleFaction(faction)

# question 2
race = ask_question("Awesome! Now choose a race!", "Blood Elf, Troll, Tauren, Undead, Orc")
handleRace(race, faction)

# question 3

begin
  enemy = ask_question("Who should we defeat first?", "Illidan, Lich king, Garrosh Hellscream")
end until ["illidan", "lich king", "garrosh hellscream"].include? enemy
handleEnemy(enemy)