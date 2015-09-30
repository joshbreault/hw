def validate_bill_input
	x =	gets.chomp.to_f
	until x > 0.0
		puts "Please enter valid input!"
		x =	gets.chomp.to_f
	end
	x.round(2)
end
def validate_tip_input
	x = gets.chomp.to_f
	if x == 0.0
		until x > 0.0
			puts "Don't be cheap!"
			puts "What will you tip your server?"
			x =	gets.chomp.to_f
		end
	end	
	(x/100)	
end
def validate_party_size
	x =	gets.chomp.to_i
	until x > 0
		puts "Please enter valid input!"
		x =	gets.chomp.to_i
	end
	x
end
def calculate_total (bill, tip)
	bill + (bill*tip).round(2)
end

puts "How much is the bill?"
bill = validate_bill_input
puts "The bill is $#{sprintf '%.2f', bill}."

puts "What percentage would you like to tip?"
tip = validate_tip_input
puts "You chose to tip %#{(tip*100).to_i}."

puts "How big is your party?"
party = validate_party_size

total = calculate_total(bill, tip)
puts "The total is $#{sprintf '%.2f', total}."

per_person = (total/party)
puts "Each person should pay $#{sprintf '%.2f', per_person}"
