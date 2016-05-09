=begin

Using the Ruby language, have the function Division(num1,num2) 
take both parameters being passed and return the Greatest Common 
Factor. That is, return the greatest number that evenly goes into 
both numbers with no remainder. For example: 12 and 16 both are 
divisible by 1, 2, and 4 so the output should be 4. The range for 
both parameters will be from 1 to 10^3. 
	
=end

def division(num1, num2)
	i = nil
	if num2 > num1
		i = num1
	else
		i = num2
	end

	while true
		if num1 % i == 0 && num2 % i == 0
			return i
		end
		i -= 1
	end
end

puts division(7, 3) # => 1
puts division(36, 54) # => 18
puts division(12, 16) # => 4