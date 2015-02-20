def caesar_cipher(string, shifter)
	ciphered = ""
	string.each_codepoint do |char|
		ciphered << case char
			when "a".ord.."z".ord
				if char + shifter < "z".ord
					((char + shifter).chr)
				else
					((shifter - ("z".ord - char) + "a".ord).chr)
				end		
			when "A".ord.."Z".ord
				if char + shifter < "Z".ord
					((char + shifter).chr)
				else
					((shifter - ("Z".ord - char) + "A".ord).chr)
				end	
			else
				char
		end
	end
	ciphered
end

puts caesar_cipher("Hello friend my Name is Sam",10)
		