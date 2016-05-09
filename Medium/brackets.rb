=begin

Using the Ruby language, have the function MultipleBrackets(str) take the 
str parameter being passed and return 1 #ofBrackets if the brackets are 
correctly matched and each one is accounted for. Otherwise return 0. 
For example: if str is "(hello [world])(!)", then the output should be 1 3 
because all the brackets are matched and there are 3 pairs of brackets, 
but if str is "((hello [world])" the the output should be 0 because the 
brackets do not correctly match up. Only "(", ")", "[", and "]" will be 
used as brackets. If str contains no brackets return 1. 

=end

def brackets(str)
	str_dup = str.dup
	arr = []
	count = 0
	i = 0
	while i < str_dup.length
		ch = str_dup[i]
		if open_paren?(ch)
			arr << ch
		elsif close_paren?(ch)
			open_paren = arr.pop
			if is_equal?(open_paren, ch)
				count += 1
			else
				return 0
			end
		end
		i += 1
	end
	count
end

def open_paren?(ch)
	if ch == '(' || ch == '['
		return true
	end
	false
end

def close_paren?(ch)
	if ch == ')' || ch == ']'
		return true
	end
	false
end

def is_equal?(open_paren, close_paren)
	if open_paren == '(' && close_paren == ')'
		return true
	elsif open_paren == '[' && close_paren == ']'
	   return true
	end
	false
end

puts brackets("(hello [world])(!)") # => 1 3
# ( [ ] ) ()
puts brackets("(coder)[byte)]") # => 0
# ( ) [ ) ]
puts brackets("(c([od]er)) b(yt[e])") # => 1 5
# ( ( [ ] ) ) ( [ ] )


