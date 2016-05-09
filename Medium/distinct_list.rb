=begin

Using the Ruby language, have the function DistinctList(arr) take the array 
of numbers stored in arr and determine the total number of duplicate entries. 
For example if the input is [1, 2, 2, 2, 3] then your program should output 
3 because there are 3 duplicates of one of the elements.

=end

def distinct_list(arr)
	h = Hash.new(0)
	arr.each do |a|
		h[a] += 1
	end
	dup_count = 0
	h.each do |key, value|
		if value > 1 && value > dup_count
			dup_count = value
		end
	end
	return 0 if dup_count == 0
	dup_count
end

puts distinct_list([1, 2, 2, 2, 3]) # => 3
puts distinct_list([0, -2, -2, 5, 5, 5]) # => 3
puts distinct_list([100, 2, 101, 4]) # => 0