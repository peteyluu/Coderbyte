=begin
Using the Ruby language, have the function MeanMode(arr) take the array of 
numbers stored in arr and return 1 if the mode equals the mean, 0 if they 
don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the 
mode (3) equals the mean (3)). The array will not be empty, will only contain 
positive integers, and will not contain more than one mode.
=end

def mean_mode(arr)
	h = Hash.new(0)
	sum = 0
	arr.each do |digit|
		h[digit] += 1
		sum += digit
	end
	count = nil
	letter = nil
	h.each_pair do |key, value|
		if count == nil || value > count
			count = value
			letter = key
		end
	end
	avg = sum / arr.length
	if avg == letter
		return true
	end
	false
end

puts mean_mode([5,3,3,3,1]) # => 1
puts mean_mode([1,2,3]) # => 0
puts mean_mode([4,4,4,6,2]) # => 1