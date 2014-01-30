



EXERCISE # 1

first_name = "Dinesh"
last_name = "Kaushal"


EXERCISE # 2


def calculate_product(array)

	if !array.empty?
		product = 1
		array.each {|num| product *= num }
    	return product
	else
		return nil
	end

end


EXERCISE # 3

def calculate_product_odd(array)
	first_flag = false
    product = 0
	array.each do |num| 
	    if num % 2 == 1
            if first_flag == false
            	 product = num
            	 first_flag = true
            else 
                 product *= num   
        	end
        end
    end
    first_flag ? product: nil
end



EXERCISE #4

def format_name(name)
  return "#{name[:last]}, #{name[:first]}"
end

def display_name(name)
  puts format_name(name)
end


# The  "format_name"  method takes a hash as the 'name' parameter and returns a string.
#Thus, if the hash { first: "Dinesh" , last: "Kaushal" } were supplied as a parameter, the following string would be returned:

"Kaushal, Dinesh"

#display_name would simply print the string that is returned from format_name



EXERCISE # 5

def find_missing_number(string)

	num_array = string.split(", ")
	num_array.map! {|number| number.to_i}
	num_array.each do |number| 
    	if number != num_array[number - 1 ] 
          		return number - 1
        end 
    end
end



EXERCISE # 6


def valid_string?(string)

validation_array= string.split("")
symbol_array = []
validation_array.each  do |element|  
    if element == "["  || element == "("  || element == "{"
        symbol_array << element
    elsif element == "]"
          if symbol_array.pop != "["
             return false
          end
    elsif element == ")"
          if symbol_array.pop != "("
             return false
          end
    elsif element == "}"
          if symbol_array.pop != "{"
             return false
          end
    end
  end
  symbol_array.empty?
end          



EXERCISE # 7




class House

def initialize(current_temp, minimum_temp, maximum_temp)
	if self.method(:initialize).arity != 3
         raise ArgumentError.new ("Incorrect number of arguments. Exactly 3 arguments must be supplied. Only #{House.method(:initialize).arity} arguments were supplied")

    else
    	 @current_temp = current_temp
    	 @minimum_temp = minimum_temp
       	 @maximum_temp = maximum_temp
    	 @heater_on = false
    	 @ac_on = false
    end
end


def toggle_heater
	if  @heater_on 
		@heater_on = false
	else
		@heater_on = true
		@ac_on = false
	end
end


def toggle_ac
	if @ac_on 
	   @ac_on = false
	else
	   @ac_on  = true
	   @heater_on = false
	end
end


def update_temp!
	if @heater_on
	   @current_temp += 1
	end
	
	if @ac_on
	   @current_temp -=2 
	end
    
    if (@current_temp > @maximum_temp)
	   if  (@ac_on == false)
		     toggle_ac
	   end
    elsif (@current_temp < @minimum_temp)
       if @heater_on ==false
	   		toggle_heater
	   end
	end
end


end


EXERCISE # 8


my favorite solution for the Reverse Polish Notation Calculator:

class RPNCalculator
  def evaluate(rpn_string)
    rpn_array = rpn_string.split
    numbers = []

    rpn_array.each do |i|
      case i 
        when '+'
        numbers << numbers.pop(2).map{|i|i.to_i}.inject(:+)
        when '-'
        numbers << numbers.pop(2).map{|i|i.to_i}.inject(:-)
        when '*'
        numbers << numbers.pop(2).map{|i|i.to_i}.inject(:*)
        else 
        numbers.push(i)
      end
    end
    return numbers[0].to_i
  end
end


REASONS:

The code is elegant and doesn't repeat itself. The indentation under the 'case' statement makes it easy to follow.  The lines of code under the "when" clauses, 
although somewhat complex, are not too hard to follow-- the methods are invoked in a logical manner (i.e the last two elements of the array are removed from the stack, converted to integers, and  the the appropriate operation is performed)


my favorite solution for Reverse Words:


def reverse_words(str)
  str.split.map {|w| w.reverse}.join(' ')
end





REASONS: I feel that only 1 line of code is needed for a problem like this.  The code is elegant and yet easy to follow. The 'map' method creates a new array
with the reversed words, and the join method returns a string. Sleek and simple.


my favorite solution for Fibonacci Numbers:



def is_fibonacci?(i, current = 1, before = 0)  
  return true if current == i || i == 0
  return false if current > i
  is_fibonacci?(i, current + before, current)
end



REASON : Recursion comes in handy in this situation - by passing 'current + before' as a parameter to the function, the fibonacci numbers are stored in the parameter list.
 The number of lines of code is minimal, and repetition is avoided. I am partial to sleek and elegant solutions.
























