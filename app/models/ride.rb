require "pry"
class Ride
	attr_accessor :driver, :passenger, :distance
	
	@@all = []
	@@distances = []

	def initialize(driver, passenger, distance)
		@driver =  driver
		@passenger = passenger
		@distance = distance.to_f
		@@all << self
		@@distances << @distance
	end

	def self.all
		@@all
	end
	
	def self.average_distance # Returns the average distance across ALL rides
		@@distances.reduce(0, :+) / @@all.count
	end
	
end
