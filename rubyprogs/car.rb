class Car

attr_reader :color , :model, :speed, :total_distance


def initialize(color, model)

   @pizzas = []
   @color = color
   @model = model  
   @total_distance = 0
   @last_act
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

     @pizzas.shift
end


def pizzas()

	@pizzas

end


def add_pizza(pizza_type)

    @pizzas << pizza_type

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
my_car.add_pizza("sausage")
my_car.add_pizza("pepperoni")
my_car.add_pizza("mushroom")
puts my_car.pizzas.inspect
puts my_car.get_next_pizza
puts my_car.pizzas.inspect






















