file = ARGV[0]

File.open(file).each do |line|
	if line.empty?
		next
	else
		s, t = line.chomp.split(",")
		if s.include?(t)
			puts s.rindex(t)
		else
			puts "-1"
		end
	end
end