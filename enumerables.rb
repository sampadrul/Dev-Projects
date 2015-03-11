module Enumerable

	def my_each
		for i in self do
			yield(i)
		end
	end
	
	def my_each_with_index
		for i in 0...self.length
			yield(self[i], i)
		end
	end
	
	def my_select
	output = []
		for i in self
			if yield(i) == true
				output << i
			end
		end
		return output	
	end
	
	def my_all?
	output = true
		for i in self
			if yield(i) == false
				output = false
			end
		end
		return output
	end
	
	def my_any?
	output = false
		for i in self
			if yield(i) == true
				output = true
			end
		end
		return output
	end
	
	def my_any?
	output = true
		for i in self
			if yield(i) == true
				output = false
			end
		end
		return output
	end
	
	def my_count
	output = 0
		for i in self do
			output += 1
		end
		return output	
	end
	
	def my_map(&block)
		output = []
		if block_given?
			for i in self do
				output << block.call(i)
			end
		else
			output = self
		end
	return output	
	end
	
	def my_inject(initial = nil)
		if initial.nil? 
			result_memo = self[0]
			for i in self[1..(self.size)] do
				result_memo = yield(result_memo, i)
			end	
		else
			result_memo = initial
			for i in self[0..(self.size)] do
				result_memo = yield(result_memo, i)
			end	
		end			
	return result_memo	
	end
	
end

def multiple_els(array)
		array.my_inject { |result_memo, i| result_memo * i }
end

proc = Proc.new { |x| x * 2 }

array = [1,2,3,4,7,4,3,2,6,6]

#array.my_each { |x| puts x ** 2 }

#array.my_each_with_index { |x, index| puts "#{index} #{x}" }

#array2 = array.my_select { |x| x > 4 }

#p array2.inspect

#p array.my_all? { |x| x >= 6 }
#p array.my_any? { |x| x >= 22 }
#p array.none? { |x| x>= 90 }
#p array.my_count
#p array.my_map { |x| x * 2 }

#p array.my_inject(3) { |memo, x| memo + x }

#p multiple_els(array)

#p array.my_map(&proc) 

