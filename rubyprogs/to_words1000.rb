
def in_words(number, output_array= [])

single_digit_array = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens_array = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen","nineteen"]
tens_digit_array = ["twenty","thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]




if number > 1000
  output_array << single_digit_array[number/1000] + " thousand"
  number = number % 1000
  if number > 0
   	  return in_words(number, output_array) 
  end


elsif number > 100
   output_array << single_digit_array[number/100] + " hundred"
   number = number % 100
   if number > 0
   	  return in_words(number, output_array) 
   end
else

    first_digit = number / 10
	case first_digit
    when 0
    	output_array << single_digit_array[number]
    when 1
        output_array << teens_array[number % 10] 
    when 2..9
         output_array <<  tens_digit_array[first_digit -2]
           if number % 10 != 0 
           	output_array << single_digit_array[number % 10]
           end
           
    end
  end

    return output_array.join(" ")


end
