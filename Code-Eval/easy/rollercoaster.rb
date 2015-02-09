#method1

file = ARGV[0]

File.open(file).each do |line|
sequence = 0
	line.each_char do |l|
		if l.match(/[A-Za-z]/)
			if sequence.even?
				print l.upcase
				sequence += 1
			else
				print l.downcase
				sequence += 1
			end
		else
			print l
		end
	end
end

#method2

file = ARGV[0]

File.open(file).each do |line|
sequence = 0
	line.each_char do |l|
		if l.match(/[A-Za-z]/)
			print sequence.even? ? l.upcase : l.downcase
			sequence += 1
		else
			print l
		end
	end
end
