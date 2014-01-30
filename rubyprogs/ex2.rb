def calculate_product(array)

	if array.empty?
		return nil
	else
        product = 1
		array.each {|num| product *= num }
    	return product
	end
end

puts calculate_product([1,2,3])    # returns 6
puts calculate_product([0,-1,-10]) # returns 0
puts calculate_product([ ]) # returns nil
puts calculate_product([1,-1,-10]) # returns 10
