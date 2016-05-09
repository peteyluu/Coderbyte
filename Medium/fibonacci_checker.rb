=begin

Using the Ruby language, have the function FibonacciChecker(num) return 
the string yes if the number given is part of the Fibonacci sequence. 
This sequence is defined by: Fn = Fn-1 + Fn-2, which means to find Fn 
you add the previous two numbers up. The first two numbers are 0 and 1, 
then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci sequence, return 
the string no. 

=end

def fib_checker(n)
	first = 0
	second = 1
	while true
		temp = first + second
		if temp == n
			return "yes"
		elsif temp > n
			return "no"
		else
			first = second
			second = temp
		end
	end
end

puts fib_checker(34) # => "yes"
puts fib_checker(54) # => "no"
puts fib_checker(377) # => "yes"