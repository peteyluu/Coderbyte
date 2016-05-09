=begin
Using the Ruby language, have the function ThirdGreatest(strArr) take the array 
of strings stored in strArr and return the third largest word within in. So for 
example: if strArr is ["hello", "world", "before", "all"] your output should be 
world because "before" is 6 letters long, and "hello" and "world" are both 5, 
but the output should be world because it appeared as the last 5 letter word 
in the array. If strArr was ["hello", "world", "after", "all"] the output should 
be after because the first three words are all 5 letters long, so return the 
last one. The array will have at least three strings and each string will only 
contain letters.
=end

def third_great(arr)
	first = nil
	second = nil
	third = nil
	arr.each do |word|
		if first == nil || word.length > first.length
			third = second
			second = first
			first = word
		elsif second == nil || word.length > second.length
			third = second
			second = word
		elsif third == nil || word.length > third.length
			third = word
		end
	end
	third
end

puts third_great(["hello", "world", "before", "all"]) # => "world"
puts third_great(["hello", "world", "after", "all"]) # => "after"
puts third_great(["coder", "byte", "code"]) # => "code"
puts third_great(["abc", "defg", "z", "hijk"]) # => "abc"