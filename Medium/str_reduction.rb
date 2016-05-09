=begin

Using the Ruby language, have the function StringReduction(str) take the 
str parameter being passed and return the smallest number you can get 
through the following reduction method. The method is: Only the letters 
a, b, and c will be given in str and you must take two different adjacent 
characters and replace it with the third. For example "ac" can be replaced 
with "b" but "aa" cannot be replaced with anything. 
This method is done repeatedly until the string cannot be further reduced, 
and the length of the resulting string is to be outputted. 
For example: if str is "cab", "ca" can be reduced to "b" and you get "bb" 
(you can also reduce it to "cc"). The reduction is done so the output 
should be 2. If str is "bcab", "bc" reduces to "a", so you have "aab", 
then "ab" reduces to "c", and the final string "ac" is reduced to "b" so 
the output should be 1. 

=end

def str_reduction(str)
	s = str.split('')
	tool = ['a', 'b', 'c']
	i = 0
	while i < s.length - 1
		temp = tool.dup
		if s[i] != s[i + 1]
			temp.delete(s[i])
			temp.delete(s[i + 1])
			s[i] = temp[0]
			s.delete_at(i + 1)
			i = 0
			#p s
		else
			i += 1
		end
	end
	puts s.length
end

str_reduction("abcabc") # => 2
# ccabc
# cbbc
# abc
# cc

str_reduction("cccc") # => 4

str_reduction("cab") # => 2 
# cab
# bb or cc

str_reduction("bcab") # => 1
# bcab
# aab
# ac
# b

=begin

	dictionary = {     
    'ab' => 'c',
    'ba' => 'c',
    'bc' => 'a',
    'cb' => 'a',
    'ac' => 'b',
    'ca' => 'b'
  }
  
  duped_str = str.dup

	i = 0
	while i < duped_str.length
	    combo = dictionary[duped_str[i .. i + 1]]
	    if combo
	     	duped_str[i .. i + 1] = combo
	     	#puts duped_str
	      	i = 0
	    else
	      	i += 1
	    end 
  	end
	puts duped_str.length

=end


