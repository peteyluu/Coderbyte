=begin

Using the Ruby language, have the function StringScramble(str1,str2) 
take both parameters being passed and return the string true if a 
portion of str1 characters can be rearranged to match str2, otherwise 
return the string false. For example: if str1 is "rkqodlw" and str2 
is "world" the output should return true. Punctuation and symbols 
will not be entered with the parameters. 

=end

def str_scramble(str1, str2)
	arr = str1.split('')
	output = ""
	str2.each_char do |ch|
		if arr.include?(ch)
			output += ch
		end
	end
	if output == str2
		return true
	end
	false
end

puts str_scramble("cdore", "coder") # => true
puts str_scramble("h3llko", "hello") # => false
puts str_scramble("rkqodlw", "world") # => true