=begin
	
Using the Ruby language, have the function BinaryConverter(str) 
return the decimal form of the binary value. For example: if 101 
is passed return 5, or if 1000 is passed return 8. 
	
=end

def binary_conv(str)
	output = []
	i = 0
	while i < str.length
		num = str[i].to_i
		expo = str.length - 1 - i
		power = 2**expo
		output << num * power
		i += 1
	end
	output.inject(:+).to_s
end

puts binary_conv("100101") # => "37"
puts binary_conv("011") # => "3"
puts binary_conv("101") # => "5"
puts binary_conv("1000") # => "8"