
# The  "format_name"  method takes a hash as the 'name' parameter and returns a string.
#Thus, if the hash { first: "Dinesh" , last: "Kaushal" } were supplied as a parameter, the following string would be returned:

"Kaushal, Dinesh"

#display_name would simply print the string that is returned from format_name







def format_name(name)
  return "#{name[:last]}, #{name[:first]}"
end

def display_name(name)
  puts format_name(name)
end