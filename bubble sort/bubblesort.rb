def bubble_sort(arr)
	arr.length.times do
		arr.each_with_index do |num, i|
			arr[i], arr[i+1] = arr[i+1], arr[i] if i < arr.size - 1 && arr[i] > arr[i+1]
		end
	end
	return arr
end
		
def bubble_sort_by(arr)
	arr.length.times do
		arr.each_with_index do |num, i|
			i < arr.size - 1 && if yield(arr[i], arr[i+1]) < 0
				arr[i], arr[i+1] = arr[i+1], arr[i]
			end
		end
	end
	return arr
end	
		

arr = [1,5,4,8,2,4,6]

bubble_sort_by(["hi","doing","how","are","thisisfun","lengthtest2"]) do |left,right|
left.length - right.length
end

	
		