=begin

Using the Ruby language, have the function Consecutive(arr) take the array 
of integers stored in arr and return the minimum number of integers needed 
to make the contents of arr consecutive from the lowest number to the highest 
number. For example: If arr contains [4, 8, 6] then the output should be 2 
because two numbers need to be added to the array (5 and 7) to make it a 
consecutive array of numbers from 4 to 8. Negative numbers may be entered 
as parameters and no array will have less than 2 elements.

=end

def consecutive(arr)
	sorted = arr.sort
	count = 0
	i = 0
	j = 1
	while true
		break if i == sorted.length - 1
    	num = sorted[i] + j
    	if num != sorted[i + 1]
        	count += 1
        	j += 1
    	else
        	i += 1
        	j = 1
    	end
	end
	count
end

puts consecutive([4, 8, 6]) # => 2
puts consecutive([5, 10, 15]) # => 8
puts consecutive([-2, 10, 4]) # => 10