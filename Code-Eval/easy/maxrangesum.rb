def line_splitter(line)

	duration, days = line.chomp.split(";")
	days = days.split(" ").map!(&:to_i)
	duration = duration.to_i
	return duration, days
	
end

def best_streak(duration, days)
	return 0 if days.count < duration
	streaks = days.each_cons(duration).to_a
	streaks.map! { |streaks| streaks.inject(&:+) }
	streaks.max > 0 ? streaks.max : 0
end

file = ARGV[0]

File.open(file).each do |line|
	duration, days = line_splitter(line)
	puts best_streak(duration, days)
end
