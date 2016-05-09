=begin
Using the Ruby language, have the function PowersofTwo(num) take the num 
parameter being passed which will be an integer and return the string true if 
it's a power of two. If it's not return the string false. For example if the 
input is 16 then your program should return the string true but if the input 
is 22 then the output should be the string false.
=end

def powers_of_2(num)
	i = 1
	while i <= num
		if i == num
			return true
		end
		i *= 2
	end
	false 
end

puts powers_of_2(16) # => true
puts powers_of_2(22) # => false
puts powers_of_2(4) # => true
puts powers_of_2(124) # => false