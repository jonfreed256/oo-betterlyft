require "pry"
class Passenger
	attr_accessor :name, :driver

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end
	
	def name
		@name
	end

	def rides # Returns an array of Ride instances that this person has been on
		Ride.all.select { |ride| ride.passenger == self }
	end

	def drivers # Returns an array of Driver instances that this person has rode with
		rides.map { |ride| ride.driver }
	end

	def total_distance # Returns the floating number that represents the total distance the passenger has travelled using the service
		rides.map { |ride| ride.distance }.reduce(0, :+)
	end

	def self.all
		@@all
	end

	def self.premium_members # Returns an array of all Passengers who have travelled over 100 miles in total with the service
		@@all.select { |passenger| passenger.total_distance > 100 }
	end
	
end
