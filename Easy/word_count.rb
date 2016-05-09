=begin
Have the function word_count(str) take the str string parameter being 
passed and return the number of words the string contains 
(ie. "Never eat shredded wheat" would return 4). 
Words will be separated by single spaces.
=end

def word_count(str)
	str = str.split
	return str.count
end

puts word_count("Hello World") # => 2
puts word_count("one 22 three") # => 3