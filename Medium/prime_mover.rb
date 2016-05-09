=begin
Using the Ruby language, have the function PrimeMover(num) return 
the numth prime number. The range will be from 1 to 10^4. 
For example: if num is 16 the output should be 53 as 53 is the 16th 
prime number.
=end

def prime_mover(num)
	count = 0
	prime = 1
	while true
		prime += 1
		if is_prime?(prime)
			count += 1
			if count == num
				return prime
			end
		end
	end
end

def is_prime?(n)
	i = 2
	while i < n
		if n % i == 0
			return false
		end
		i += 1
	end
	true
end

puts prime_mover(16) # => 53
puts prime_mover(9) # => 23
puts prime_mover(100) # => 541