def fizzBuzz(x, y, n)
	line = ""
	1.upto(n) do |i|
		case 
		when i % x == 0 && i % y == 0 
			line << "FB "
		when i % y == 0
			line << "B "
		when i % x == 0
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
	puts fizzBuzz(x, y, n) if x.between?(1,20) && x.between?(1,20) && n.between?(21,100)
end