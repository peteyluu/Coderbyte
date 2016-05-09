=begin
	
Using the Ruby language, have the function LetterCount(str) take the str 
parameter being passed and return the first word with the greatest number 
of repeated letters. For example: "Today, is the greatest day ever!" should 
return greatest because it has 2 e's (and 2 t's) and it comes before ever 
which also has 2 e's. If there are no words with repeating letters return -1. 
Words will be separated by spaces.

*Return the first word with the greatest number of repeated letters*

=end

def letter_count(str)
	words = str.split
	output = ""
	g_count = 0
	words.each do |word|
		if ch_count(word) > g_count
			output = word
			g_count = ch_count(word)
		end
	end
	return -1 if output.length == 0
	output
end

def ch_count(word)
	count = 0
	h = Hash.new(0)
	word.each_char do |ch|
		h[ch] += 1
	end
	h.each do |key, value|
		if value > 1
			count += 1
		end
	end
	count
end

puts letter_count("Hello apple pie") # => "Hello"
puts letter_count("No words") # => -1
puts letter_count("Today, is the greatest day ever!") # => greatest