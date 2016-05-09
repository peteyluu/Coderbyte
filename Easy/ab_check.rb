=begin
Have the function ABCheck(str) take the str parameter being passed and 
return the string true if the characters a and b are separated by exactly 
3 places anywhere in the string at least once (ie. "lane borrowed" would 
result in "true" because there is exactly three characters between a and b). 
Otherwise return the string false. 
=end

def ab_check(str)
	str = str.split('')
	i = 0
	while i < str.length
		if str[i] == 'a' && str[i+4] == 'b'
			return true
		elsif str[i] == 'b' && str[i+4] == 'a'
			return true
		end
		i += 1
	end
	false
end

puts ab_check("after badly") # => "false"
puts ab_check("Laura sobs") # => "true"
puts ab_check("away obe") # => "true"
puts ab_check("noah obe") # => "true"
puts ab_check("far ebs") # => "true"
puts ab_check("123adzvb") # => "true"
puts ab_check("abccccazzzb") # => "true"
puts ab_check("bzzza") # => "true"