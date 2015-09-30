
def fizzbuzz(array=[])


	array.each do |x| 

		if x%15 == 0
			puts "fizzbuzz"
		elsif x%3 ==  0 
			puts "fizz"
		elsif x%5 == 0 
			puts "buzz"
		else 
			puts x
		end
	end

end
h = (1..100)
fizzbuzz(h)
puts "___"
puts h


#fizzbuzz(array) 




# array.each do |item| 
# 	p item 
# end
