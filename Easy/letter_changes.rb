=begin

Take the str parameter being passed and modify it using the following algorithm. 
Replace every letter in the string with the letter following it in the alphabet 
(ie. c becomes d, z becomes a). 
Then capitalize every vowel in this new string (a, e, i, o, u) and finally return 
this modified string. 

Use the Parameter Testing feature in the box below to test your code with 
different arguments.

=end
def letter_changes(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  result = ""
  i = 0
  while i < str.length
    if (str[i].ord > 96 && str[i].ord < 123)
      new_letter = (97 + ((str[i].ord - 97 + 1) % 26)).chr
      if vowels.include?(new_letter)
        result += new_letter.capitalize
      else
        result += new_letter
      end
    else
      result += str[i]
    end
    i += 1
  end
  return result
end

puts letter_changes("hello world")# => "Ifmmp xpsmE"
#puts letter_changes("replace!")# => "sfqmbdf!"
#puts letter_changes("coderbyte")# => "dpEfsczUf"
#puts letter_changes("beautiful^")# => "cfbvUjgvm^"
#puts letter_changes("123456789ae")# => "123456789bf"
#puts letter_changes("this long cake@&")# => "UIjt mpOh dblf@&"
#puts letter_changes("a b c dee")# => "b c d Eff"
#puts letter_changes("a confusing /:sentence:/[ this is not!!!!!!!~")
# => "b dpOgvtjOh /:tfOUfOdf:/[ UIjt jt OpU!!!!!!!~"
#puts letter_changes("hello*3")# => "Ifmmp*3"
#puts letter_changes("fun times!")# => "gvO Ujnft!"