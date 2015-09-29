	cats = []

	100.times do
		cats << true
	end

	100.times do |j|

	100.times do |i|

		if i % (j+1) == 0
			cats[i] = !cats[i]
		end
	end

end 

cats.each_with_index do |cat, i|
	if !cat
		puts "#{i}" 
		end
	end
