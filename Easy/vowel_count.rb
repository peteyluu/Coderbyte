=begin
Have the function vowel_count(str) take the str parameter being passed and
return the number of vowels the string contains
(ie. "All cows eat grass" would return 5).
Do not count y as a vowel for this challenge.
=end

def vowel_count(str)
	count = 0
	str.scan(/[aeiou]/) {|letter| count += 1}
	return count
end

puts vowel_count("hello") # => 2
puts vowel_count("coderbyte") # => 3