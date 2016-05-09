=begin
Using the Ruby language, have the function DashInsert(str) insert dashes 
('-') between each two odd numbers in str. For example: if str is 454793 
the output should be 4547-9-3. Don't count zero as an odd number.
=end

def dash_insert(str)
	str_s = str.to_s
	output = ""
	i = 0
	while i < str_s.length
		first = str_s[i].to_i
		second = str_s[i + 1].to_i
		output += first.to_s
		if (first % 2 != 0 && second % 2 != 0)
			output += '-'
		end
		i += 1
	end
	output
end

puts dash_insert(454793) # => 4547-9-3
puts dash_insert(99946) # => 9-9-946
puts dash_insert(56730) # => 567-30
