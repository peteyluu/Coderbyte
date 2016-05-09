=begin
Have the function alpha_soup(str) take the str string parameter being
passed and return the string with the letters in alphabetical order
(ie. hello becomes ehllo). Assume numbers and punctuation symbols will not
be included in the string.

raise StandardError if [",", ".", "!", "?", "'"].any? { |punctuation| str.include?(punctuation) }

str.scan(/\w/).sort.join
=end

def alpha_soup(str)
	arr = str.split("")
	should_repeat = true
	while should_repeat
		should_repeat = false
		i = 0
		while i < arr.length - 1
			if arr[i].ord > arr[i + 1].ord
				should_repeat = true
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
			end
			i += 1
		end
	end
	arr.join
end

p alpha_soup("hello") # => "ehllo"
p alpha_soup("coderbyte") # => "bcdeeorty"
p alpha_soup("love") # => "elov"
p alpha_soup("yoop") # => "oopy"
p alpha_soup("hooplah") # => "ahhloop"
p alpha_soup("defbca") # => "abcdef"
p alpha_soup("comma") # => "acmmo"
p alpha_soup("loldcb") # => "bcdllo"
p alpha_soup("letter") # => "eelrtt"
p alpha_soup("quack") # => "ackqu"
p alpha_soup("ba") # => "ab"