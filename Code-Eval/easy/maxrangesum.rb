file = ARGV[0]

File.open(file).each do |line|

	duration, days = line.chomp.split(";")
	days = days.split(" ").map! { |num| num = num.to_i }
	duration = duration.to_i - 1
	
	
	profit = 0
	max_profit = 0
	
	days[0..(days.length - duration)].each_with_index do |day, index|
	
		days[index..(index + duration)].inject(0) do |change, total|
			profit = change + total
		end
		max_profit = profit if profit > max_profit
	end
	puts max_profit
end
