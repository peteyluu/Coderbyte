=begin
Have the function arith_geo(arr) take the array of numbers stored in arr and
return the string "Arithmetic" if the sequence follows an arithmetic pattern
or return "Geometic" if it follows a geometic pattern. 
If the sequence doesn't follow either pattern return -1. 
An arithmetic sequence is one where the difference between each of the 
numbers is consistent, where as in a geometric sequence, each term after 
the first is multiplied by some constant or common ratio. 
Arithmetic example: [2,4,6,8] and Geometrix example: [2,6,18,54]. 
Negative numbers may be entered as parameters, 0 will not be entered, 
and no array will contain all the same elements.
=end

def arith_geo(arr)
	if arith?(arr)
		return "Arthmetic"
	elsif geo?(arr)
		return "Geometric"
	else
		return -1
	end
end

def arith?(arr)
	result = []
	diff = 0
	i = 0
	while i < arr.length - 1
		diff = arr[i + 1] - arr[i]
		result << arr[i + 1] - arr[i]
		i += 1
	end
	if result.all? {|digit| digit == diff}
		p result
		return true
	end
	false
end

def geo?(arr)
	result = []
	quot = 0
	i = 0
	while i < arr.length - 1
		quot = arr[i + 1] / arr[i]
		result << arr[i + 1] / arr[i]
		i += 1
	end
	if result.all? {|digit| digit == quot}
		p result
		return true
	end
	false
end

puts arith_geo([1,2,3,4]) # => "Arithmetic"
#puts arith_geo([1,2,3,4,5,10,20]) # => -1
#puts arith_geo([1,2,3,4,5,6,7,88,2]) # => -1
#puts arith_geo([100,200,400,800,1600]) # => "Geometric"
#puts arith_geo([10,110,210,310,410,511]) # => -1
puts arith_geo([10,110,210,310,410]) # => "Arithmetic"
#puts arith_geo([5,10,20,40,80]) # => "Geometric"
puts arith_geo([-3,-4,-5,-6,-7]) # => "Arithmetic"
puts arith_geo([1,5,9]) # => "Arithmetic"
#puts arith_geo([5,10,15]) # => "Arithmetic" (+ or - the same value)
#puts arith_geo([2,4,6,8]) # => "Arithmetic"
#puts arith_geo([2,6,18,54]) # => "Geometric" (* or / the same value)
#puts arith_geo([2,4,16,24]) # => -1
