def convert_to_base_36(integer)

  hash_output = []
  hash_array = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  highest_digit = integer / 46656
  highest_remainder = integer % 46656 
  second_digit =  highest_remainder / 1296
  second_remainder = highest_remainder % 1296
  third_digit = second_remainder / 36
  fourth_digit = second_remainder % 36
  hash_output[0]= hash_array[highest_digit]
  hash_output[1]= hash_array[second_digit]
  hash_output[2]= hash_array[third_digit]
  hash_output[3]= hash_array[fourth_digit]
  hash_output.join("")




  
end





puts "Enter latitude"

lat_entry= ((gets.chomp().to_f * 10000).round ) / 2  

latitude_hash = convert_to_base_36(lat_entry)

puts "Enter longitude"  

long_entry= ((gets.chomp().to_f * 10000).round ) / 2 

longitude_hash = convert_to_base_36(long_entry)

puts "Your hashed coordinates are #{latitude_hash} #{longitude_hash} "















   
  #return "#{highest_digit}   #{second_digit}  #{third_digit}  #{third_remainder} " 

 





