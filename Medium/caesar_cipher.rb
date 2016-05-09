=begin

Using the Ruby language, have the function CaesarCipher(str,num) 
take the str parameter and perform a Caesar Cipher shift on it 
using the num parameter as the shifting number. A Caesar Cipher 
works by shifting each letter in the string N places down in the 
alphabet (in this case N will be num). Punctuation, spaces, and 
capitalization should remain intact. For example if the string is 
"Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt".

=end

def caesar_cipher(str, num)
	if num == 0
		return str
	else
		output = ""
		str.each_char do |ch|
			if ch.ord >= 97 && ch.ord <= 122
			   encrypt = (('a'.ord + ((ch.ord - 'a'.ord + num) % 26))).chr
			   output += encrypt
			elsif ch.ord >= 65 && ch.ord <= 90
				encrypt = (('A'.ord + ((ch.ord - 'A'.ord + num) % 26))).chr
			   	output += encrypt
			else
				output += ch
			end
		end
	end
	output
end

puts caesar_cipher("Caesar Cipher", 2) # => "Ecguct Ekrjgt"
puts caesar_cipher("Hello", 4) # => "Lipps"
puts caesar_cipher("abc", 0) # => "abc"