class HappyNumber
	def self.numChecker(number)
		100.times do
			array = number.to_s.split("").map! { |x| x.to_i } 
			array = array.map! { |x| x**2 }	
			number = array.inject { |sum, num| sum + num }	
		end
	
		return number == 1 ? number : 0
		
	end
end


file = ARGV[0]

File.open(file).each do |line|
	number = line.chomp.to_i
	puts HappyNumber.numChecker(number)
end