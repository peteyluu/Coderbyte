=begin
Have the function div_str(num1,num2) take both parameters
being passed, divide num1 by num2, and return the result as
a string with properly formatted commas. If an answer is only
3 digits long, return with no commas (ie. 2/3 should output
"1"). For example if num1 is 123456789 and num2 is 10000 the
output should be "12,345"
=end

def comma(num)
    num_s = num.to_s
    output = ""
    i = 0
    while i < num_s.length
        if i != 0 && i % 3 == 0
            output = ',' + output
        end
        output = num_s[num_s.length - 1 - i] + output
        i += 1
    end
    output
end

puts comma(1000) # => "1,000"
#puts comma(1000000) # => "1,000,000"
#puts comma(999)
#puts comma(99)
#puts comma(9)
#puts comma(100000)
#puts comma(500000000)

puts div_str(123456789, 10000) # => "12,345"
puts div_str(12345, 100)
puts div_str(5, 2) # => "3"
puts div_str(6874, 67) # => "103"
puts div_str(503394930, 43)
puts div_str(9112, 2)
puts div_str(101077282, 21123)