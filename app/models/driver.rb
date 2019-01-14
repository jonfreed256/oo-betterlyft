require "pry"
class Driver
	attr_accessor :name, :passenger

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end
	

	def passenger_names # Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
		rides.map { |ride| ride.passenger }.uniq
	end

	def rides # Returns an array of all Rides a driver has made
		Ride.all.select { |ride| ride.driver == self }
	end

	def self.all # Returns an array of all Drivers
		@@all
	end

	def total_distance # Returns the floating number that represents the total distance the driver has travelled using the service
		rides.map { |ride| ride.distance }.reduce(0, :+)
	end

	def self.mileage_cap(distance_cap) # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
		Ride.all.select do |ride| 
			ride.distance >= distance_cap
		end
	end
	
end
