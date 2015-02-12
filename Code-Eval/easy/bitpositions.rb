file = ARGV[0]

File.open(file).each do |line|
	
	
	num, p1, p2 = line.split(",").map { |x| x = x.to_i }
	num = num.to_s(2)

	puts num[-p1] == num[-p2] ? "true" : "false"	
	
end