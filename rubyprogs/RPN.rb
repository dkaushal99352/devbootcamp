
my favorite solution for Fibonacci Numbers:


def is_fibonacci?(i, current = 1, before = 0)  
  return true if current == i || i == 0
  return false if current > i
  is_fibonacci?(i, current + before, current)
end

REASON : Recursion comes in handy in this situation - by passing 'current + before' as a parameter to the function, the fibonacci numbers are stored in the parameter list.
 The number of lines of code is minimal, and repetition is avoided. I am partial to sleek and elegant solutions.




my favorite solution for Reverse Words:


def reverse_words(str)
  str.split.map {|w| w.reverse}.join(' ')
end

REASONS: I feel that only 1 line of code is needed for a problem like this.  The code is elegant and yet easy to follow. The 'map' method creates a new array
with the reversed words, and the join method returns a string. Sleek and simple.



























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
although somewhat complex, are not too hard to follow-- the methods are invoked in a logical manner (i.e the last two elements of the array are removed from the stack, converted to integers, and  the the appropraite operation is performed)




calc = RPNCalculator.new

puts calc.evaluate('1 2 +')   # => 3
puts calc.evaluate('2 5 *')   # => 10
puts calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
puts calc.evaluate('70 10 4 + 5 * -') # => 0