=begin
Using the Ruby language, have the function NumberSearch(str) take the str 
parameter, search for all the numbers in the string, add them together, 
then return that final number. For example: if str is "88Hello 3World!" the 
output should be 91. You will have to differentiate between single digit numbers 
and multiple digit numbers like in the example above. So "55Hello" and "5Hello 5" 
should return two different answers. Each string will contain at least one letter 
or symbol. 
=end

def num_search(str)
	arr = str.split(/\d+/)
	sum = 0
	arr.each do |ch|
    	sum += ch.to_i
	end
	sum
end

puts num_search("88Hello 3World!") # => 91
puts num_search("75Number9") # => 84
puts num_search("10 2One Number*1*") # => 13