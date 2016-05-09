=begin
Using the Ruby language, have the function SwapCase(str) take the str 
parameter and swap the case of each character. For example: if str is 
"Hello World" the output should be hELLO wORLD. Let numbers and symbols stay 
the way they are. 
=end

def swap_case(str)
	output = ""
	str.each_char do |ch|
		if ch.ord >= 65 && ch.ord <= 90 || ch.ord >= 97 && ch.ord <= 122
			if ch == ch.downcase
				output += ch.upcase!
			elsif ch == ch.upcase
				output += ch.downcase!
			end
		else
			output += ch
		end
	end
	output
end

puts swap_case("Hello World") # => hELLO wORLD
puts swap_case("Hello-LOL") # => "hELLO-lol"
puts swap_case("Sup DUDE!!?") # => "sUP dude!!?"