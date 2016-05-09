=begin

Have the function SimpleSymbols(str) take the str parameter being passed 
and determine if it is an acceptable sequence by either returning the string 
true or false. 
The str parameter will be composed of + and = symbols with several letters 
between them (ie. ++d+===+c++==a) and for the string to be true each letter 
must be surrounded by a + symbol. So the string to the left would be false. 
The string will not be empty and will have at least one letter. 

=end

def simple_symbols(str)
	i = 0
	while i < str.length
		if str[i].ord >= 97 && str[i].ord <= 122
			if i == 0 || i == str.length - 1
				return false
			end
			if str[i-1].ord != 43 && str[i+1].ord != 43
				return false
			end
		end
		i += 1
	end
	true
end

puts simple_symbols("+d+=3=+s+") # => true
puts simple_symbols("f++d+") # => false
puts simple_symbols("+f++d+d") # => false
puts simple_symbols("+d+") # => true
puts simple_symbols("+z+z+z+") # => true
puts simple_symbols("2+a+a+") # => true
puts simple_symbols("+a++") # => true
puts simple_symbols("+z+z+==+a+") # => true