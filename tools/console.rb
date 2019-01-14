require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

hillary = Driver.new("hillary")
bill = Passenger.new("bill") 
ride1 = Ride.new(hillary, bill, 100)

barack = Driver.new("barack")
michelle = Passenger.new("michelle") 
ride2 = Ride.new(barack, michelle, 200)


ride3 = Ride.new(barack, bill, 250)


ride4 = Ride.new(hillary, michelle, 300)

distance_cap = 200

binding.pry
