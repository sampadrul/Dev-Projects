def letter_percent(string)
	string = string.gsub(/[^0-9a-z]/i, '')
	lowercase = 0
	upcase = 0
	length = string.length
	
	string.each_char do |char|
		char.match(/[[:upper:]]/) ? upcase += 1 : lowercase += 1
	end
	
	lower_percent = (lowercase.to_f/length).round(4) * 100
	up_percent = (upcase.to_f/length).round(4) * 100
	
	puts sprintf("lowercase: %.2f uppercase: %.2f", lower_percent, up_percent)

end

file = ARGV[0]

File.open(file).each do |line|
	letter_percent(line)
end