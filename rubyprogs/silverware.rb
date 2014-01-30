class Drawer
 
attr_reader :contents
 
# Are there any more methods needed in this class?
 
def initialize
@contents = []
@open = true
@lock = false
end
 
def open        #opens Drawer
  if @locked
      puts "Drawer is locked and cannot be open"
  else 
      @open = true
      puts "Drawer has been opened"
  end
end
 
def close  #closes Drawer
  @open = false

end 


def lock   #new method to lock drawer
  @locked = true
  @open = false
  puts "Drawer has been locked"
end


def unlock  #new method to unlock drawer
 @locked = false
 puts "Drawer has been unlocked"

end



def add_item(item) #adds item to Drawer
@contents << item
item
end
 
def remove_item(item = @contents.last) #what is `#pop` doing?

if @contents.include?(item)  
   @contents.delete(item)
   puts item.type + "has been removed"
else
   puts "Error---  item not in the drawer"

end
item
end
 
def dump  # what should this method return?
  @contents = []
  puts "Your drawer is empty."
end
 
def view_contents
  unless contents.empty?
   puts "The drawer contains:"
   @contents.each {|silverware| puts "- " + silverware.type }
  end
end

end  #Drawer  


class Silverware
attr_reader :type , :polish , :clean
 
# Are there any more methods needed in this class?
 
def initialize(type, clean = true)
@type = type
@clean = clean
@polish = false
end
 
def eat
puts "eating with the #{type}"
@clean = false
@polish = false
end

def clean_silverware
  puts "cleaning the #{type}"
   @clean = true
end

 
def polish # new method
  puts "polishing the #{type}"
  @polish = true
end


def condition #new method

     print  @type + " is" 
     print @clean ? " clean " : " dirty "
     print "and "
     print @polish ? " polished" : " unpolished"

end

end #Silverware


 
knife1 = Silverware.new("knife")
 
silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents
 
silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")
 
 
silverware_drawer.add_item(sharp_knife)
 
silverware_drawer.view_contents
 
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 
 
silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?
 
 
fork = silverware_drawer.remove_item(fork)
fork = Silverware.new("fork")
silverware_drawer.add_item(fork) 
silverware_drawer.add_item(Silverware.new("knife")) 
silverware_drawer.add_item(Silverware.new("sharp knife")) 
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
removed_spoon = silverware_drawer.remove_item(spoon)
silverware_drawer.view_contents
removed_spoon.clean_silverware



 #add some puts statements to help you trace through the code...
fork.eat  

 
fork.condition
#BONUS SECTION
puts fork.clean

fork.clean_silverware
fork.polish
fork.condition
silverware_drawer.lock
silverware_drawer.open
silverware_drawer.unlock
silverware_drawer.open