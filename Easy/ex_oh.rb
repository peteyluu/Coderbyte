=begin
Have the function ex_oh(str) take the str parameter being passed and return
the string true if there is an equal number of x's and o's, otherwise return
the string false. Only these two letters will be entered in the string, no
punctuation or numbers. (ie. if str is "xooxxxxooxo" then the output should
return false because there are 6 x's and 5 o's).
=end

def ex_oh(str)
	str = str.split('')
	x_count = 0
	o_count = 0
	i = 0
	while i < str.length
		if str[i] == 'x'
			x_count += 1
		elsif str[i] == 'o'
			o_count += 1
		end
		i += 1
	end

	if x_count != o_count
		return false
	else
		return true
	end
end

puts ex_oh("xxooo") # => "false"
#puts ex_oh("xoxooooooooooox") # => "false"
#puts ex_oh("xooooooooooxxxxxxxx") # => "false"
#puts ex_oh("xooxxxxooxo") # => "false" 
#puts ex_oh("xooxxo") # => "true"
#puts ex_oh("x") # => "false"