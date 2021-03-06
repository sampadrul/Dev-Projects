def stock_picker(prices)
	profit = 0
	buy_day = nil
	sell_day = nil
	
	prices[0..(prices.length - 2)].each_with_index do |buy, index|
		prices[(index + 1)..prices.length].each do |sell|
			
			difference = sell - buy
			
			if difference > profit
				profit = difference
				buy_day = buy
				sell_day = sell
			end		
		end
	end	
	return [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])