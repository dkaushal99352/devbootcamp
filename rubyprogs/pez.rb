class PezDispenser



def initialize(flavors)
   @list_of_flavors =  flavors
end




def add_pez(flavor)
   @list_of_flavors << flavor 
end


def get_pez
   @list_of_flavors.pop
end

def see_all_pez
      @list_of_flavors.inspect
end

def pez_count
    @list_of_flavors.count
end


end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




