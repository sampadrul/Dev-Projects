file = ARGV[0]

File.open(file).each { |line|

	text = line.split(" ")
	words = text.each { |word| word.split() }
	words.map! { |word| word.to_s.squeeze }	
	puts words.join(" ")
}