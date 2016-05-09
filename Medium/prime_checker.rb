=begin

Using the Ruby language, have the function PrimeChecker(num) take num and 
return 1 if any arrangement of num comes out to be a prime number, otherwise 
return 0. For example: if num is 910, the output should be 1 because 910 can 
be arranged into 109 or 019, both of which are primes. 

=end

def prime_checker(num)
	x = num.to_s.split('')
	y = x.collect { |i| i.to_i }
	z = y.permutation.to_a
	z.map! do |n|
		value = n.join('').to_i
		if value != num
			if is_prime?(value)
				return 1
			end
		end
	end
	-1
end

def is_prime?(value)
	i = 2
	while i < value
		if value % i == 0
			return false
		end
		i += 1
	end
	true
end

puts prime_checker(910) # => 1 bc 910 can be arranged into 109 or 019 (both primes)
puts prime_checker(98) # => 1
puts prime_checker(598) # => 1