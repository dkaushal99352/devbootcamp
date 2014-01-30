def north_korean_encode(coded_message)
  message = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  encoded_sentence = []
  offset = 4
  random_char_array = [ "@" , "#",  "$" ,  "%",  "^" ,  "&" , "*"]
  #the cipher is being removed and replaced by an array containing the alphabet
    alphabet = "abcdefghijklmnopqrstuvwxyz"
            
  message.each do |x| #check each character in the input sentence
      if alphabet.include?(x)
        if alphabet.index(x) + offset <= 25

          encoded_sentence << alphabet[alphabet.index(x) + offset] #move forward 4 letters  in the alphabet to encode
        else
          encoded_sentence << alphabet[alphabet.index(x) + offset  -26 ] #wrap around if at end of alphabet
        end 

      #elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #convert special characters to spaces
      elsif  x ==  " "
          encoded_sentence << random_char_array[rand(7)]
      else
          encoded_sentence << x #simply transcribe other characters
       end
  end
  encoded_sentence = encoded_sentence.join("")#convert the 'decoded_sentence' array back to a string
 
  if encoded_sentence.match(/\d+/) #check for digit patterns
    encoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return encoded_sentence # returns decoded sentence       
end
 
p north_korean_encode("i want a coke!") == "m^aerx%e&gsoi!" #This is driver code and should print true
p north_korean_encode("i want a coke!") 
p north_korean_encode("what are you doing?")
 