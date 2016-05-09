=begin

Using the Ruby language, have the function FormattedDivision(num1,num2) 
take both parameters being passed, divide num1 by num2, and return the 
result as a string with properly formatted commas and 4 significant digits 
after the decimal place. For example: if num1 is 123456789 and num2 is 10000 
the output should be "12,345.6789". The output must contain a number in the 
one's place even if it is a zero. 

=end

def formatted_div(num1, num2)
	result = (num1.to_f / num2.to_f).round(4)
	arr = result.to_s.split('.')
	if arr[1].length == 4
		arr[0] = add_comma(arr[0])
		return arr.join('.')
	else
		len = arr[1].length
		while true
			break if len == 4
			arr[1] += '0'
			len += 1
		end
		return arr.join('.')
	end
end

def add_comma(num)
	output = ""
    i = 0
    while i < num.length
        if i != 0 && i % 3 == 0
            output = ',' + output
        end
        output = num[num.length - 1 - i] + output
        i += 1
    end
    output
end

puts formatted_div(2, 3) # => "0.6667"
puts formatted_div(10, 10) # => "1.0000"
puts formatted_div(123456789, 10000) # => "12,345.6789"