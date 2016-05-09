=begin

Using the Ruby language, have the function DashInsertII(str) insert dashes 
('-') between each two odd numbers and insert asterisks ('*') between each 
two even numbers in str. For example: if str is 4546793 the output should 
be 454*67-9-3. Don't count zero as an odd or even number. 

=end

def dash_insert(num)
	num_s = num.to_s
	output = ""
	prev_char = nil
	i = 0
	while i < num_s.length
		if i > 0
			if prev_char.to_i != 0 && num_s[i].to_i != 0
				if prev_char.to_i % 2 == 0 && num_s[i].to_i % 2 == 0
					output += '*'
				elsif prev_char.to_i % 2 != 0 && num_s[i].to_i % 2 != 0
					output += '-'
				end
			end
		end
		prev_char = num_s[i]
		output += prev_char
		i += 1
	end
	output
end

puts dash_insert(99946) # => 9-9-94*6
puts dash_insert(56647304) # => 56*6*47-304
puts dash_insert(4546793) # => 454*67-9-3