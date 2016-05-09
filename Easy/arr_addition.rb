=begin
Have the function ArrayAdditionI(arr) take the array of numbers
stored in arr and return the string true if any combination of
numbers in the array can be added up to equal the largest number
in the array, otherwise return the string false. For example: if
arr contains [4,6,23,10,1,3] the output should return true b/c
4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain
all the same elements, and may contain negative numbers.
=end

def arr_addition(arr)
	i = 2
	while i < arr.length
		if arr.combination(i).map {|comb| comb.inject(:+)}.include?(arr.max)
			return true
		end
		i += 1
	end
	false
end

# puts arr_addition([4,6,23,10,1,3]) # => "true"
# puts arr_addition([5,7,16,1,2]) # => "false"
# puts arr_addition([3,5,-1,8,12]) # => "true"
puts arr_addition([10,20,30,40,100]) # => "true"
puts arr_addition([31,2,90,50,7]) # => "true"
