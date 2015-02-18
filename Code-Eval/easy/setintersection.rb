class Intersector
	def self.intersector(line)
		first_set, second_set = line.split(";").map { |nums| nums.split(",").map(&:to_i) }
		puts (first_set & second_set).count > 0 ? (first_set & second_set).join(",") : ""
	end
end
	

file = ARGV[0]

File.open(file).each do |line|
	Intersector.intersector(line)
end