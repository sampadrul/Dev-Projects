file = ARGV[0]

File.open(file).each do |line|
	print line.chomp.split(",").uniq.join(",")
	print "\n"
end