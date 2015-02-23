def stock_picker(prices)
	prices[0..(prices.length - 2)].each do |buy|
		prices[(buy + 1)..(prices.length)].each do |sell|
			print sell - buy			
		end
	end	


end
stock_picker([17,3,6,9,15,8,6,1,10])
