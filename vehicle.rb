#Implement a class hierarchy: Vehicle and Car. Implement their constructors.
#Add a method to the Car class to start the engine.
#Demonstrate method overriding by creating a method in both the Vehicle and Car classes with the same name.

class Vehicle
	attr_reader :engine, :status
	def initialize(type)
		@type = type
		@engine = false
	end

	def start_engine
		@engine = true 
	end

	def start_engine?
		@status = @engine ? "Engine started" : "Engine not started"
	end
end

class Car < Vehicle
	def initialize
		super("Car")
	end

	def start_engine
		puts "Engine cannot be started" 
	end
end

bus = Vehicle.new("Bus")
puts bus.engine
bus.start_engine
puts bus.start_engine?

puts ""

car = Car.new
puts car.engine
car.start_engine
puts car.start_engine?