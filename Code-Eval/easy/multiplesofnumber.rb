file = ARGV[0]

File.open(file).each do |line|
	x, n = line.split(",").map { |x| x = x.to_i }
	i = 1
	t = 0
	
	until t >= x do
		t = n * i
		i = i + 1
	end
	print t.to_s + "\n"
	
end