=begin

Using the Ruby language, have the function SwapII(str) take the str parameter 
and swap the case of each character. Then, if a letter is between two numbers 
(without separation), switch the places of the two numbers. 
For example: if str is "6Hello4 -8World, 7 yes3" the output should be 
4hELLO6 -8wORLD, 7 YES3. 

=end

def swap(str)
	output = ""
	str.each_char do |ch|
		if ch.ord >= 97 && ch.ord <= 122 || ch.ord >= 65 && ch.ord <= 90
			if ch == ch.upcase
				output += ch.downcase
			else
				output += ch.upcase
			end
		else
			output += ch
		end
	end
	result = output.split
	result.map do |str2|
		if swap_int?(str2)
			str2.reverse!
		end
	end
	result.join(' ')
end

def swap_int?(str)
	count = 0
	str.scan(/\d/) { |x| count += 1 }
	if count > 1
		return true
	end
	false
end

puts swap("Hello -5LOL6") # => "hELLO -6lol5"
#puts swap("2S 6 du5d4e") # => "2s 6 DU4D5E"
#puts swap("6Hello4 -8World, 7 yes3") # => "4hELLO6 -8wORLD, 7 YES3"




