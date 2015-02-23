def substring(words, dictionary)
	word_freq = Hash.new(0)
	
	words.gsub(/[^0-9a-z ]/i, '').split(" ").each do |word|
		word_freq[word] += 1 if dictionary.include? word
	end
	return Hash[word_freq.sort_by { |word, count| count }.reverse]
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substring("Howdy partner, sit sit sit sit down! How's it going?", dictionary)