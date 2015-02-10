def binCount(num)
	("%b" % num).count("1")
end

file = ARGV[0]

File.open(file).each do |line|
	puts binCount(line)
end
