array = ['romeo', 'oedipus', 'hansel', 'gretel']
# name = array.map do |cap| 	
# 	cap.capitalize 
# end

# puts name


# .capitalize .upcase .downcase

# .each iterates over an array, but we do not change the original values.

# .map iterates over an array, and changes the original values to what you want.




def capitalize_each(friends=[])
	output = friends.map do |cap| 	
		cap.capitalize
	end
end

# puts capitalize_each(["josh", "anuvis", "gonzo"])

puts capitalize_each([1,2,3])
