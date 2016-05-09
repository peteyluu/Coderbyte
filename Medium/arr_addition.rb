=begin

Using the Ruby language, have the function ArrayAddition(arr) take 
the array of numbers stored in arr and return the string true if any 
combination of numbers in the array can be added up to equal the 
largest number in the array, otherwise return the string false. 
For example: if arr contains [4, 6, 23, 10, 1, 3] the output should 
return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, 
will not contain all the same elements, and may contain negative 
numbers. 

=end

def arr_addition(arr)
	combo = []
	max = arr.max
	(2..arr.length).each do |i|
		a = arr.combination(i).to_a
		combo += a
	end

	combo.each do |x|
		sum = x.inject(:+)
		if max == sum
			return true
		end
	end
	false
end

puts arr_addition([5, 7, 16, 1, 2]) # => false
puts arr_addition([3, 5, -1, 8, 12]) # => true
puts arr_addition([4, 6, 23, 10, 1, 3]) # => true
