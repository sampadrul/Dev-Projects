def fizzBuzz(x, y, n)
	line = ""
	(1..n).each do |i|
		if i % x == 0 && i % y == 0 
			line << "FB "
		elsif i % y == 0
			line << "B "
		elsif i % x == 0
			line << "F "
		else 
			line <<  i.to_s + " "
		end
	end
	return line.strip
end

file = ARGV[0]

File.open(file).each do |line|
	x, y, n = line.split(" ").map(&:to_i)
	if x.between?(1,20) && x.between?(1,20) && n.between?(21,100)
		puts fizzBuzz(x, y, n)
	end
end