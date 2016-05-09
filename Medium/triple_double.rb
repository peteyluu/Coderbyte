=begin

Using the Ruby language, have the function TripleDouble(num1,num2) take 
both parameters being passed, and return 1 if there is a straight triple of 
a number at any place in num1 and also a straight double of the same number 
in num2. For example: if num1 equals 451999277 and num2 equals 41177722899, 
then return 1 because in the first parameter you have the straight triple 
999 and you have a straight double, 99, of the same number in the second 
parameter. If this isn't the case, return 0. 

=end

def triple_double(num1, num2)
	
	trip = is_triple(num1)
	n = trip.first
	pair = is_double(num2, n)

	if trip.length == 3 && pair.length == 2
		return 1
	end
	0
end

def is_triple(num1)
	num1 = num1.to_s
	trip = []
	i = 0
	while i < num1.length - 3
		if num1[i] == num1[i + 1]
			if num1[i + 1] == num1[i + 2]
				trip << num1[i] << num1[i + 1] << num1[i + 2]
				break
			end
		end
		i += 1
	end
	trip
end

def is_double(num2, n)
	num2 = num2.to_s
	pair = []
	j = 0
	while j < num2.length - 1
		if num2[j] == n
			if num2[j] == num2[j + 1]
				pair << num2[j] << num2[j + 1]
			end
		end
		j += 1
	end
	pair
end

puts triple_double(451999277, 41177722899) # => 1
puts triple_double(465555, 5579) # => 1
puts triple_double(67844, 66237) # => 0