def north_korean_encode(coded_message)
  message = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  encoded_sentence = []
  offset = 4
  #the cipher is being removed and replaced by an array containing the alphabet
    alphabet = "abcdefghijklmnopqrstuvwxyz"
            
  message.each do |x| #check each character in the input sentence
      if alphabet.include?(x)
        if alphabet.index(x) + offset <= 25

          encoded_sentence << alphabet[alphabet.index(x) + offset] #move forward 4 letters  in the alphabet to encode
        else
          encoded_sentence << alphabet[alphabet.index(x) + offset  -25 ] #wrap around if at end of alphabet

      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #convert special characters to spaces
        encoded_sentence << " "
      else
        encoded_sentence << x #simply transcribe other characters
    end
  end
  encoded_sentence = decoded_sentence.join("")#convert the 'decoded_sentence' array back to a string
 
  if encoded_sentence.match(/\d+/) #check for digit patterns
    encoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return encoded_sentence # returns decoded sentence       
end
 
p north_korean_cipher("i want a coke!") == "m^aerx%e&gsoi!" #This is driver code and should print true
p north_korean_encode("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")