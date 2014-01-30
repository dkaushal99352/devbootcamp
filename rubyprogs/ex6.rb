def valid_string?(string)


validation_array= string.split("")
symbol_array = []

validation_array.each {|element|  
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
}
   symbol_array.empty?


end              
          
puts valid_string?("[ ]")                  # returns true
puts valid_string?("[  ")                  # returns false
puts valid_string?("[ ( text ) {} ]")      # returns true
puts valid_string?("[ ( text { ) } ]")     # returns false
puts valid_string?("[ { () } ]")  # should return true
puts valid_string?("[ { )} ]")  # should return false

