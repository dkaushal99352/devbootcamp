class House


attr_accessor :current_temp , :maximum_temp, :ac_on  , :heater_on
def initialize(current_temp, minimum_temp, maximum_temp)
	if self.method(:initialize).arity != 3
         raise ArgumentError.new ("Incorrect number of arguments. Exactly 3 arguments must be supplied. Only #{House.method(:initialize).arity} arguments were supplied")

    else
    	 @current_temp = current_temp
    	 @minimum_temp = minimum_temp
       	 @maximum_temp = maximum_temp
    	 @heater_on = false
    	 @ac_on = false
    end
end


def toggle_heater
	if  @heater_on 
		@heater_on = false
	else
		@heater_on = true
		@ac_on = false
	end
end


def toggle_ac
	if @ac_on 
	   @ac_on = false
	else
	   @ac_on  = true
	   @heater_on = false
	end
end




def update_temp!
	if @heater_on
	   @current_temp += 1
	end
	
	if @ac_on
	   @current_temp -=2 
	end
    
    if (@current_temp > @maximum_temp)
	   if  (@ac_on == false)
		     toggle_ac
	   end
    elsif (@current_temp < @minimum_temp)
       if @heater_on ==false
	   		toggle_heater
	   end
	end
end


end


main = House.new(71, 65 , 78)
main.toggle_ac
main.update_temp! #should be 69
puts main.current_temp
main.update_temp!  #should be 67
main.update_temp! #should be 65
main.update_temp! #should be 63, heater should go on
main.update_temp!   #should be 64
30.times { main.update_temp!

        puts "current temp is  #{main.current_temp}"   }

5.times {main.toggle_ac 
	        puts  main.ac_on ?  "ac is on" : "ac is off"
	        puts  main.heater_on ? "heater is on" : "heater is off" }

5.times {main.toggle_heater
	        puts  main.ac_on ?  "ac is on" : "ac is off"
	        puts  main.heater_on ? "heater is on" : "heater is off" }









