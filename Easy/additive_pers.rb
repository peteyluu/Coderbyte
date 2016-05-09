=begin

Using the Ruby language, have the function AdditivePersistence(num) take 
the num parameter being passed which will always be a positive integer and 
return its additive persistence which is the number of times you must add 
the digits in num until you reach a single digit. For example: if num is 
2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 
1 + 8 = 9 and you stop at 9. 

Hint: mutate the num input until the length becomes 1...

=end

def additive_pers(num)
	num_copy = num
	count = 0
	while num_copy.to_s.length > 1
		a = num_copy.to_s.split('')
		num_copy = a.inject { |sum, digit| sum.to_i + digit.to_i }
		count += 1
	end
	count
end

puts additive_pers(2718) # => 2
# return 2 b/c 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9..
puts additive_pers(4) # => 0
puts additive_pers(19) # => 2
