=begin
Have the function time_convert(num) take the num parameter being passed and return the number of hours and minutes the parameter converts to
(ie. if num = 63 then the output should be 1:3). Separate the number of hours
and minutes with a colon.
=end

def time_convert(num)
	mins = num % 60
  	hours = (num / 60)
  	time = hours.to_s + ":" + mins.to_s
 	return time
end

puts time_convert(126) # => "2:6"
puts time_convert(45) # => "0:45"