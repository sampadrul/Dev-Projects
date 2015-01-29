file = ARGV[0]

File.open(file).each { |line|
	if line.length > 0
		text = line.split(" ").each { |word| word.split() }
		text.map! { |word| word.to_s.squeeze }	
		puts text.join(" ")
		
	end
}