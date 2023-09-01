#Develop a class Circle with attributes radius and methods to calculate the area and circumference.

class Circle
	attr_reader :radius, :circumference, :area
	def initialize(radius)
		@radius = radius
	end

	def circumference
		@circumference = 2 * radius
	end

	def area
		@area = radius * radius
	end
end

circle1 = Circle.new(3)
circle2 = Circle.new(5)

puts "Circle1"
puts "Radius: #{circle1.radius}"
puts "Circumference: #{circle1.circumference}pi"
puts "Area: #{circle1.area}pi"

puts "Circle2"
puts "Radius: #{circle2.radius}"
puts "Circumference: #{circle2.circumference}pi"
puts "Area: #{circle2.area}pi"