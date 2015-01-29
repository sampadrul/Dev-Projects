require 'prime'

numbers = 1..1000

max = 0
for i in numbers
	if i.prime? && i.to_s == i.to_s.reverse && i > max
		max = i
	end
end
print max

max = 0
for i in numbers
	if i.prime? 
		if i.to_s == i.to_s.reverse
			if i > max
				max = i
			end
		end	
	end
end

print max


