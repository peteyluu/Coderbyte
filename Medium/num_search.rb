=begin

Using the Ruby language, have the function NumberSearch(str) take the str 
parameter, search for all the numbers in the string, add them together, 
then return that final number divided by the total amount of letters in 
the string. For example: if str is "Hello6 9World 2, Nic8e D7ay!" the output 
should be 2. First if you add up all the numbers, 6 + 9 + 2 + 8 + 7 you get 32. 
Then there are 17 letters in the string. 32 / 17 = 1.882, and the final answer 
should be rounded to the nearest whole number, so the answer is 2. 
Only single digit numbers separated by spaces will be used throughout the 
whole string (So this won't ever be the case: hello44444 world). 
Each string will also have at least one letter. 

=end

def num_search(str)
	str_downcase = str.downcase
	a = str_downcase.split

	num_sum = 0
	letter_sum = 0

	a.each do |str|
		str.each_char do |ch|
			if ch.ord >= 97 && ch.ord <= 122
				letter_sum += 1
			end
			if ch.to_i >= 1 && ch.to_i <= 9
				num_sum += ch.to_i
			end
		end
	end
	(num_sum.to_f / letter_sum.to_f).round
end

puts num_search("Hello6 9World 2, Nic8e D7ay!") # => 2
puts num_search("H3ello9-9") # => 4
puts num_search("One Number*1*") # => 0

# str.scan(/\d+/) { |i| sum1 += i.to_i } => find all digits