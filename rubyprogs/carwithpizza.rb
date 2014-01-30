class Car

attr_reader :color , :model, :speed, :total_distance


  def initialize(color, model)
    @pizzas = []
    @color = color
    @model = model  
    @total_distance = 0
    puts "A new car has been created --- a #{color}  #{model} "
  end


  def  drive_distance(distance)
    puts "Driving #{distance} miles"
    @total_distance += distance
  end



  def turn(direction)
     direction.downcase!
     if direction == "left"
         puts "Turning left"
     elsif direction == "right"
         puts "Turning right"
     else
     	  raise ArgumentError.new("Turning direction must be specified as either left or right")
     end
  end


  def set_speed(speed)
	   @speed = speed
	   puts "Your speed has been changed to #{speed} mph"
  end


  def check_speed()
    puts "Your current speed is #{@speed} mph"
  end


  def stop()
	   puts "Car stopped"
  end


  def total_distance()
	   puts "Total distance traveled is #{@total_distance} miles"
  end


  def get_next_pizza()
    pizza = @pizzas.shift
    puts " You have just taken a  #{pizza.size}  #{pizza.crust} crust  #{pizza.topping}  pizza from  the compartment"
  end



  def pizzas()

	 if @pizzas.empty? 
        puts "There are no pizzas in the car"
   else
        puts "You have the following pizzas:"
        @pizzas.each do  |pizza|
            puts "a #{pizza.size}  #{pizza.crust} crust  #{pizza.topping}  pizza "
       end       
   end
  end


  def add_pizza(pizza_type)
    @pizzas << pizza_type
  end


end



class Pizza

attr_reader :size, :topping, :crust
@@toppings_avail=["Peperonni", "Sausage", "Olives", "Mushrooms", "Onions", "Green Peppers"]
@@sizes_avail=["Small","Medium","Large"]
@@crusts_avail=["Thin", "Thick"]





  def initialize(topping, size, crust)

   topping.capitalize!  
   size.capitalize!
   crust.capitalize!
    

    if @@toppings_avail.include?(topping)
        @topping = topping
    else 
        raise ArgumentError.new("Topping not available")

    end


    if @@sizes_avail.include?(size)
        @size = size
    else 
        raise ArgumentError.new("Size not available")
    end


    if @@crusts_avail.include?(crust)
        @crust = crust
    else 
        raise ArgumentError.new("Size not available")
    end


end #initialize

  def Pizza.add_topping(topping)
    @@toppings_avail << topping.capitalize!
  end


end 












my_car= Car.new( "red", "Toyota")
my_car.drive_distance(0.25)   # Drive .25 miles at 25 mph
my_car.set_speed(25)
my_car.stop             #At the stop sign, turn right
my_car.turn("right")
my_car.drive_distance(1.5)   # Drive 1.5 miles at  35 mph
my_car.set_speed(35)
my_car.check_speed()          #At the school zone, check your speed
my_car.set_speed(15)          #Slow down to speed limit 15 mph
my_car.drive_distance(0.25)	#Drive .25 more miles
my_car.turn("left")			#At the stop sign, turn left
my_car.drive_distance(1.4)	#Drive 1.4 miles (speed limit is 35 mph)
my_car.set_speed(35)
my_car.stop							#Stop at your destination
my_car.total_distance                #Log your total distance travelled
#my_car.add_pizza("sausage")
#my_car.add_pizza("pepperoni")
#my_car.add_pizza("mushroom")
#puts my_car.pizzas.inspect
#puts my_car.get_next_pizza
#puts my_car.pizzas.inspect
pizza1 = Pizza.new("Sausage","MEdium", "thin")
pizza2 = Pizza.new("Olives","Large","thin" )
my_car.add_pizza(pizza1)
my_car.add_pizza(pizza2)
 my_car.pizzas
my_car.get_next_pizza
my_car.pizzas
Pizza.add_topping("ham")
pizza3 = Pizza.new("ham", "large", "thick")
my_car.add_pizza(pizza3)
my_car.pizzas





















