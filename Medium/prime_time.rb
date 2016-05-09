=begin
Using the Ruby language, have the function PrimeTime(num) take the 
num parameter being passed and return the string true if the parameter 
is a prime number, otherwise return the string false. The range will 
be between 1 and 2^16. 

A prime number (or a prime) is a natural number greater than 1
that has no positive divisors other than 1 and itself. A natural
number greater than 1 that is not a prime number is called a composite
number.

[2, 3, 5, 7, 11, 13, 17, 19, 23, 31, 37]
=end

def prime_time(num)
	i = 2
	while i < num
		if num % i == 0
			return false
		end
		i += 1
	end
	true
end

puts prime_time(19) # => true
puts prime_time(110) # => false

=begin
(19 % 1 == 0 && 19 % 19 == 0)

COND: 2 < 19
19 % 2 == 1
19 % 3 == 1
19 % 4 == 3
5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18

=end