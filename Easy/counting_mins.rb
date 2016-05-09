=begin
Using the Ruby language, have the function CountingMinutesI(str) take the str 
parameter being passed which will be two times (each properly formatted with a 
colon and am or pm) separated by a hyphen and return the total number of minutes 
between the two times. The time will be in a 12 hour clock format. 
For example: if str is 9:00am-10:00am then the output should be 60. 
If str is 1:00pm-11:00am the output should be 1320.
=end

def counting_mins(str)
	a = str.split('-')
	time1 = a[0]
	time2 = a[1]

	time_1 = time1.split(':')
	time_2 = time2.split(':')

	hours1 = time_1[0].to_i
	mins1 = time_1[1][0..-3].to_i
	hours2 = time_2[0].to_i
	mins2 = time_2[1][0..-3].to_i

	if time1.include?('p')
		hours1 = hours1 + 12
	elsif time2.include?('p')
		hours2 = hours1 + 12
	end

	total = ((hours2 - hours1) * 60) + (mins2 - mins1)

	if total < 0
		total += 1440
	end

	total
end

puts counting_mins("9:00am-10:00am") # => 60
puts counting_mins("1:00pm-11:00am") # => 1320
puts counting_mins("12:30pm-12:00am") # => 690
puts counting_mins("1:23am-1:08am") # => 1425
puts counting_mins("1:00am-11:00pm") # => 720
