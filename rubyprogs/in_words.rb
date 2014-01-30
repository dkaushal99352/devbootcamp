
def in_words(number)

	single_digit_array = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	teens_array = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen","nineteen"]
	tens_digit_array = ["twenty","thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]
	output_array=[]
	output_array2=[]



	if number == 1000000
		return "one million"


	elsif number >= 1000
  		output_array << in_words( number / 1000 ) + " thousand"
  		number = number % 1000
  		if number > 0
   	  		output_array << in_words(number) 
  		end


	elsif number >= 100
   		output_array <<  in_words(number / 100) + " hundred"
   		number = number % 100
   		if number > 0
   	  		output_array << in_words(number)
   		end

	else
    	first_digit = number / 10
		case first_digit
    	when 0
    		 return single_digit_array[number]
    	when 1
        	  return teens_array[number % 10] 
    	when 2..9
        	 output_array2 <<  tens_digit_array[first_digit -2]
          	 if number % 10 != 0 
           		output_array2 << single_digit_array[number % 10]
           	 end
          	 return output_array2.join(" ")
        end
 	 end
 
 return output_array.join(" ")

end


puts in_words(0)
puts in_words(7)
puts in_words(90)
puts in_words(77)
puts in_words(400)
puts in_words(567)
puts in_words(3000)
puts in_words(3337)
puts in_words(40000)
puts in_words(55197) 
puts in_words(300000)      
puts in_words(821713) 
puts in_words(1000000) 





