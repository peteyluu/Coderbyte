=begin
Using the Ruby language, have the function RunLength(str) take the 
str parameter being passed and return a compressed version of the 
string using the Run-length encoding algorithm. This algorithm works 
by taking the occurrence of each repeating character and outputting 
that number along with a single character of the repeating sequence. 
For example: "wwwggopp" would return 3w2g1o2p. The string will not 
contain any numbers, punctuation, or symbols. 
=end

def run_length(str)
	arr = []
	prev_char = nil
	count = 0
	str.each_char do |ch|
		if prev_char != nil
			if prev_char == ch
				count += 1
			else
				arr << "#{count}#{prev_char}"
				prev_char = ch
				count = 1
			end
		end
		if prev_char == nil
			prev_char = ch
			count = 1
		end
	end
	arr << "#{count}#{prev_char}"
	arr.join('')
end

puts run_length("aabbcde") # => "2a2b1c1d1e"
puts run_length("wwwbbbw") # => "3w3b1w"