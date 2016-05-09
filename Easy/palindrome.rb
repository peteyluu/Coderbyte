=begin
Have the function palindrome(str) take the str parameter being passed and 
return the string true if the parameter is a palindrome, 
(the string is the same forward as it is backward) otherwise return the 
string false. For example: "racecar" is also "racecar" backwards. 
Punctuation and numbers will not be part of the string. 
=end

def palindrome(str)
	str = str.gsub(' ', '')
	if str.reverse == str
		return true
	end
	false
end

puts palindrome("never odd or even") # => "true"
puts palindrome("eye") # => "true"