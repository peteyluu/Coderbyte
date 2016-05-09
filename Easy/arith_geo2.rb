def arith_geo(arr)
	arith_pattern = arr[1] - arr[0]
	geo_pattern = arr[1].div(arr[0])
	arith_model = [arr[0]]
	geo_model = [arr[0]]
	(arr.length - 1).times do |x|
		arith_model << (arith_model[x] + arith_pattern)
		geo_model << (geo_model[x] * geo_pattern)
	end
	return "Arithmetic" if arr == arith_model
	return "Geometric" if arr == geo_model
	return -1
end

puts arith_geo([1,2,3,4]) # => "Arithmetic"
puts arith_geo([1,2,3,4,5,10,20]) # => -1
puts arith_geo([1,2,3,4,5,6,7,88,2]) # => -1
puts arith_geo([100,200,400,800,1600]) # => "Geometric"
puts arith_geo([10,110,210,310,410,511]) # => -1
puts arith_geo([10,110,210,310,410]) # => "Arithmetic"
puts arith_geo([5,10,20,40,80]) # => "Geometric"
puts arith_geo([-3,-4,-5,-6,-7]) # => "Arithmetic"
puts arith_geo([1,5,9]) # => "Arithmetic"
puts arith_geo([5,10,15]) # => "Arithmetic" (+ or - the same value)
puts arith_geo([2,4,6,8]) # => "Arithmetic"
puts arith_geo([2,6,18,54]) # => "Geometric" (* or / the same value)
puts arith_geo([2,4,16,24]) # => -1