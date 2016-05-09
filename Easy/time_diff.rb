# Write a funciton that returns the difference in minutes between two times
# i.e. 2:36 and 4:09 should be 93 minutes.

def time_diff(time1, time2)
    time1_a = time1.split(':')
    time2_a = time2.split(':')
    
    hours_output = 0
    hours1 = time1_a[0].to_i
    hours2 = time2_a[0].to_i
    hours = hours2 - hours1
    
    mins = time2_a[1].to_i - time1_a[1].to_i
    
    while hours > 0
        hours_output += 60
        hours -= 1
    end
    return hours_output + mins    
end

time_diff("2:36", "4:09") # => 93 minutes