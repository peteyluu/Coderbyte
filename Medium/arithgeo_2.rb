=begin

Using the Ruby language, have the function ArithGeoII(arr) take the 
array of numbers stored in arr and return the string "Arithmetic" if 
the sequence follows an arithmetic pattern or return "Geometric" if 
it follows a geometric pattern. If the sequence doesn't follow 
either pattern return -1. An arithmetic sequence is one where the 
difference between each of the numbers is consistent, where as in 
a geometric sequence, each term after the first is multiplied by 
some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and 
Geometric example: [2, 6, 18, 54]. Negative numbers may be entered 
as parameters, 0 will not be entered, and no array will contain all 
the same elements. 
	
=end

def arithgeo_2(arr)

	if arith?(arr)
		return "Arithmetic"
	elsif geo?(arr)
		return "Geometric"
	else
		return -1
	end
end

def arith?(arr)
	output = [arr[0]]
	sum = arr[1] - arr[0]
	i = 0
	while i < arr.length - 1
		output << arr[i] + sum
		i += 1
	end
	if output == arr
		return true
	end
	false
end

def geo?(arr)
	output = [arr[0]]
	prod = arr[1] / arr[0]
	i = 0
	while i < arr.length - 1
		output << arr[i] * prod
		i += 1
	end
	if output == arr
		return true
	end
	false
end

puts arithgeo_2([5, 10, 15]) # => Arithmetic
puts arithgeo_2([2, 4, 16, 24]) # => -1
puts arithgeo_2([2, 6, 18, 54]) # => Geometric