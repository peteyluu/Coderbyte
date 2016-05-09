=begin
Have the function letter_count(str) take the str parameter being
passed and return the first word with the greatest number of
repeated letters. For example, "Today, is the greatest day ever!"
should return greatest b/c it has 2 e's (and 2 t's) and it comes
before ever which also has 2 e's. If there are no words with
repeating letters return -1. Words will be separated by spaces
=end

def letter_count(str)
	str = str.split
	result = ""
	greatest_count = 0
	str.each do |word|
		if num_repeat(word) > greatest_count
			result = word
			greatest_count = num_repeat(word)
		end
	end
	return "-1" if result.length == 0
	result
end

def num_repeat(word)
	count = 0
	h = Hash.new(0)
	word.each_char do |c|
		h[c] += 1
	end
	h.each_pair do |key, value|
		count += 1 if value > 1
	end
	return count
end

#puts letter_count("Today, is the greatest day ever!") # => greatest
#puts letter_count("Hello apple pie") # => "Hello"
puts letter_count("No words") # => -1