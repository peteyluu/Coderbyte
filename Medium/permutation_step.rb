=begin

Using the Ruby language, have the function PermutationStep(num) take the 
num parameter being passed and return the next number greater than num using 
the same digits. For example: if num is 123 return 132, if it's 12453 
return 12534. If a number has no greater permutations, return -1 (ie. 999).

=end

def permutation_step(num)
	x = num.to_s.split('')
	y = x.collect { |i| i.to_i }
	z = y.permutation.to_a

	z.map! do |n|
		if n.join('').to_i > num
			return n.join('').to_i
		end
	end
	-1
end

puts permutation_step(123) # => 132
puts permutation_step(11121) # => 11211
puts permutation_step(41352) # => 41523