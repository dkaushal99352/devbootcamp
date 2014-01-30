def find_missing_number(string)

	num_array = string.split(", ")
	num_array.map! {|number| number.to_i}
	num_array.each do |number| 
    	if number != num_array[number - 1 ] 
          		return number - 1
        end 
    end
end





string_missing_7    = (1..10000).reject { |x| x == 7 }.join(", ")
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(", ")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(", ")


puts find_missing_number(string_missing_7)          # returns 7
puts find_missing_number(string_missing_4567)       # returns 4567
puts find_missing_number(string_missing_9999)       # returns 9999
