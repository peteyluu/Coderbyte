=begin

Using the Ruby language, have the function SimpleMode(arr) take the array 
of numbers stored in arr and return the number that appears most frequently 
(the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should 
be 4. If there is more than one mode return the one that appeared in the array 
first (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If 
there is no mode return -1. The array will not be empty. 

=end

def simple_mode(arr)
	output = nil
	h = Hash.new(0)
	arr.each do |num|
		h[num] += 1
	end

	g_count = 0
	g_key = nil
	h.each do |key, value|
		if value > 1 && value > g_count
			g_count = value
			g_key = key
		end
	end
	return -1 if g_key == nil
	g_key
end

puts simple_mode([5, 5, 2, 2, 1]) # => 5
puts simple_mode([3, 4, 1, 6, 10]) # => -1
puts simple_mode([5, 10, 10, 6, 5]) # => 5
puts simple_mode([10, 4, 5, 2, 4]) # => 4
