file = ARGV[0]

File.open(file).each { |line|

	text = line.split(" ")
	
	words = text.map { |word| word.split() }
	
	print words.to_s.squeeze.join()
}