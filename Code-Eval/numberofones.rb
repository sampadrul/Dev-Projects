def binCount(num)
	Integer(num).to_s(2).count("1")
end

file = ARGV[0]

File.open(file).each do |line|
	puts binCount(line)
end