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


def unlock(combination) #new method to unlock drawer
 
if combination == code
    @locked = false
    puts "Drawer has been unlocked"
else
  puts "incorrect combination --- Drawer cannot be unlocked"
end
end



def add_item(item) #adds item to Drawer
@contents << item
item
end
 
def remove_item(item = @contents.last) #removes item from drawer

  if @contents.include?(item)  
      @contents.delete(item)
      puts item.type + "has been removed"
  else
     puts "Error---  item not in the drawer"

  end

  item

end
 


def dump  # cleans out the drawer
    @contents = []
    puts "Your drawer is empty."
end
 


def view_contents   #reveals the contents of the drawer
  unless contents.empty?
   puts "The drawer contains:"
   @contents.each {|silverware| puts "- " + silverware.type }
  end

end

private

def code

  @pin=1234

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
 
def eat     #allows one to eat with the silverware
  puts "eating with the #{@type}"
  @clean = false
  @polish = false
end

def clean_silverware   #cleans the silverware
  puts "cleaning the #{@type}"
  @clean = true
end

 
def polish # new method   -polishes the silverware
  puts "polishing the #{@type}"
  @polish = true
end


def condition #new method  -- indicates what the condition of the silerware is

     print  @type + " is" 
     print @clean ? " clean " : " dirty "
     print "and "
     print @polish ? " polished" : " unpolished"

end

end #Silverware



#driver code
 
knife1 = Silverware.new("knife")    #=> creates a new knife
 
silverware_drawer = Drawer.new     #=> creates a new drawer
silverware_drawer.add_item(knife1)     #=> adds knife
silverware_drawer.add_item(Silverware.new("spoon"))  #=>adds a spoon to the drawer
silverware_drawer.add_item(Silverware.new("fork"))   #=> adds a fork to the drawer
silverware_drawer.view_contents  #=>  should display knife, spoon, and fork
silverware_drawer.remove_item   #=> should remove the fork 
silverware_drawer.view_contents #=> should display knife and spoon
sharp_knife = Silverware.new("sharp_knife")  #=> creates a sharp knife
 
silverware_drawer.add_item(sharp_knife) #=>  adds the sharp knife to the drawer
silverware_drawer.view_contents #=> displays the contents of the drawer
removed_knife = silverware_drawer.remove_item(sharp_knife) #=> removes the sharp knife from the drawer
removed_knife.eat #=> eats with the sharp knife
removed_knife.clean_silverware  #=> cleans the sharp knife
 
silverware_drawer.view_contents #=>  should return knife, spoon, and sharp knife
silverware_drawer.dump #=> should empty the drawer
silverware_drawer.view_contents #=> should not return anything
 
fork = silverware_drawer.remove_item(fork) #=> should remove the fork
fork = Silverware.new("fork") #=> creates a new fork
silverware_drawer.add_item(fork) #=> adds the fork to the drawer
silverware_drawer.add_item(Silverware.new("knife")) #=> adds a knife to the drawer
silverware_drawer.add_item(Silverware.new("sharp knife")) #=> adds a sharp knife to the drawer 
spoon = Silverware.new("spoon") #=> creates a new spoon
silverware_drawer.add_item(spoon) #==> adds the spoon to the drawer
removed_spoon = silverware_drawer.remove_item(spoon) #==> removes the spoon from the drawer
silverware_drawer.view_contents  #=> should return fork, knife, and sharp knife
removed_spoon.clean_silverware  #=> should clean the spoon



 #add some puts statements to help you trace through the code...
fork.eat  #=> eats with the fork

 
fork.condition #==>  should return dirty and unpolished
puts fork.clean               