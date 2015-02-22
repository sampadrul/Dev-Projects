def stock_picker(prices)
	buy = nil
	sell = nil
	profit = 0
	
	prices[0..(prices.length - 1)].each do |buy|
		
		prices[buy + 1..prices.length].each do |sell|
			diff = prices[buy].to_i - prices[sell].to_i
		end
	end
end

prices = [3,5,2,6,9,3,3,7,10]
puts stock_picker(prices)