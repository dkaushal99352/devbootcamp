def north_korean_cipher(coded_message)
  incoming_message = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  offset = 4
  #the cipher is being removed and replaced by an array containing the alphabet
    alphabet = "abcdefghijklmnopqrstuvwxyz"
            
  incoming_message.each do |x| #check each character in the input sentence
      if alphabet.include?(x)
        decoded_sentence << alphabet[alphabet.index(x) - offset] #move back 4 letters  in the alphabet to decode 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #convert special characters to spaces
        decoded_sentence << " "
      else
        decoded_sentence << x #simply transcribe other characters
    end
  end
  decoded_sentence = decoded_sentence.join("")#convert the 'decoded_sentence' array back to a string
 
  if decoded_sentence.match(/\d+/) #check for digit patterns
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # returns decoded sentence       
end
 
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")