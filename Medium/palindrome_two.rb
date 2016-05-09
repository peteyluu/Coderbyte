=begin
Using the Ruby language, have the function PalindromeTwo(str) take 
the str parameter being passed and return the string true if the 
parameter is a palindrome, (the string is the same forward as it is 
backward) otherwise return the string false. The parameter entered 
may have punctuation and symbols but they should not affect whether 
the string is in fact a palindrome. For example: "Anne, I vote more 
cars race Rome-to-Vienna" should return true. 
=end

def palindrome_two(str)
	str_1 = str.scan(/\w+/).join('').downcase
	str_2 = str_1.reverse
	if str_1 == str_2
		return true
	end
	false
end

puts palindrome_two("Noel - sees Leon") # => true
puts palindrome_two("A war at Tarawa!") # => true
puts palindrome_two("Anne, I vote more cars race Rome-to-Vienna") # => true