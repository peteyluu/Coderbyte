=begin
Using the Ruby language, have the function SecondGreatLow(arr) 
take the array of numbers stored in arr and return the second 
lowest and second greatest numbers, respectively, separated 
by a space. For example: if arr contains [7, 7, 12, 98, 106] 
the output should be 12 98. The array will not be empty and 
will contain at least 2 numbers. It can get tricky if there's 
just two numbers! 
=end

def second_great(arr)
	a = arr.sort!
	if a.length == 2
		return "#{a[0]}, #{a[1]}"
	else
		a.uniq!
		first_high = nil
		second_high = nil
		first_low = nil
		second_low = nil
		i = 0
		while i < a.length
			if first_high == nil || a[i] > first_high
				second_high = first_high
				first_high = a[i]
			elsif second_low == nil || a[i] > second_low
				second_low = a[i]
			end
			if first_low == nil || a[i] < first_low
				second_low = first_low
				first_low = a[i]
			elsif second_low == nil || a[i] < second_low
				second_low = a[i]
			end
			i += 1
		end
	end
	"#{second_low}, #{second_high}"
end

puts second_great([7, 7, 12, 98, 106]) # => "12, 98"
puts second_great([1, 42, 42, 180]) # => "42, 42"
puts second_great([4, 90]) # => "4, 90"
puts second_great([1,2,2,3]) # => "2, 2"
puts second_great([2,2,2,5,5,5,6]) # => "5, 5"
puts second_great([100,30,6]) # => "30, 30"
puts second_great([78,90,100,1,2]) # => "2, 90"
puts second_great([-4,-5,10,2]) # => "-4, 2"
puts second_great([100,200,3,400,5,1]) # => "3, 200"
puts second_great([4, 60, 7, 188]) # => "7, 60"
puts second_great([80,80]) # => "80, 80"
puts second_great([90,23]) # => "23, 90"
puts second_great([7,7,90, 1000003]) # => "90, 90"



