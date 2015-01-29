require "time"

file = ARGV[0]

#method1

File.open(file).each do |line|
	
	t1, t2 = line.split(" ")
	
	if t1 > t2
		diff = Time.parse(t1) - Time.parse(t2)
	else
		diff = Time.parse(t2) - Time.parse(t1)
	end
	puts Time.at(diff).gmtime.strftime('%H:%M:%S')
end

#method2 using ternary operator

File.open(file).each do |line|
	
	t1, t2 = line.split(" ")
	
	t1 > t2 ? diff = Time.parse(t1) - Time.parse(t2) : diff = Time.parse(t2) - Time.parse(t1)

	puts Time.at(diff).gmtime.strftime('%H:%M:%S')
end






