=begin

Using the Ruby language, have the function ThreeFiveMultiples(num) return 
the sum of all the multiples of 3 and 5 that are below num. 
For example: if num is 10, the multiples of 3 and 5 that are below 10 
are 3, 5, 6, and 9, and adding them up you get 23, so your program should 
return 23. The integer being passed will be between 1 and 100.

=end

def threefivemulti(num)
	output = 0
	i = 1
	while i < num
		if i % 3 == 0
			output += i
		elsif i % 5 == 0
			output += i
		end
		i += 1
	end
	output 
end

puts threefivemulti(6) # => 8
puts threefivemulti(1) # => 0
puts threefivemulti(10) # => 23