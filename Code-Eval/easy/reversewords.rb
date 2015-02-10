file = ARGV[0]

File.open(file).each do |line|
		text = line.split(" ").reverse
		if text.length > 0
			puts text.join(" ")
		end

end
