
hash_array = ["123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"]












def convert_to_base_36(integer)

  highest_digit = integer / 46656
  highest_remainder = integer - ( highest_digit * 46656)
  second_digit =  highest_remainder / 1296
  second_remainder = highest_remainder - (second_digit * 1296)
  third_digit = second_remainder/ 36
  third_remainder = second_remainder - (third_digit * 36)
   
  return "#{highest_digit}   #{second_digit}  #{third_digit}  #{third_remainder} " 

 end


puts convert_to_base_36(688090)


