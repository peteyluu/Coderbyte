=begin

Using the Ruby language, have the function MultiplicativePersistence(num) 
take the num parameter being passed which will always be a positive integer 
and return its multiplicative persistence which is the number of times you 
must multiply the digits in num until you reach a single digit. 
For example: if num is 39 then your program should return 3 because 
3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 

=end

def multi_pers(num)
	count = 0
	while num.to_s.length > 1
		a = num.to_s.split('')
		num = a.inject{ |prod, x| prod.to_i * x.to_i }
		count += 1
	end
	count
end

puts multi_pers(39) # => 3
puts multi_pers(4) # => 0
puts multi_pers(25) # => 2