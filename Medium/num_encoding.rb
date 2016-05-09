=begin

Using the Ruby language, have the function NumberEncoding(str) take the str 
parameter and encode the message according to the following rule: encode every 
letter into its corresponding numbered position in the alphabet. 
Symbols and spaces will also be used in the input. 
For example: if str is "af5c a#!" then your program should return 1653 1#!.

=end

def num_encoding(str)
	h = Hash.new(0)
	i = 1
	('a'..'z').each do |a|
		h[a] += i
		i += 1
	end
	output = ""
	str.each_char do |ch|
		if ch.ord >= 97 && ch.ord <= 122
			output += h.fetch(ch).to_s
		else
			output += ch
		end
	end
	output
end

puts num_encoding("af5c a#!") # => 1653 1#!
puts num_encoding("hello 45") # => 85121215 45
puts num_encoding("jaj-a") # => 10110-1
