def fizzBuzz(x, y, n)
	arr = []
	(1...n).each do |i|
		if i % x == 0 && i % y == 0 
			arr << "B"
		elsif i % y == 0 || i % x == 0 
			arr << "F"
		else 
			arr <<  i
		end
	end
	print arr.join(" ")
end

file = ARGV[0]

File.open(file).each do |line|
	x, y, n = line.split(" ").map(&:to_i)
	if x.between?(1,20) && x.between?(1,20) && n.between?(21,100)
		fizzBuzz(x, y, n)
		print "\n"
	end
end