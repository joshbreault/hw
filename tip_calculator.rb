puts "How much is the bill?"
bill = gets.to_f
total = bill + (bill * 0.20)
bill = sprintf "%.2f", bill
total = sprintf "%.2f", total
puts "The bill is $#{bill}"
puts "The total is $#{total}"