#Implement a class Rectangle with attributes width and height. Add methods to calculate the area and perimeter.

class Rectangle
	attr_reader :width, :height, :area, :perimeter
	def initialize(width,height)
		@width = width
		@height = height
	end

	def area
		@area = @width * @height
	end

	def perimeter
		@perimeter = 2 * (@width + @height)
	end
end

rectangle1 = Rectangle.new(3,4)
rectangle2 = Rectangle.new(5,8)

puts "Rectangle1"
puts "Width: #{rectangle1.width}"
puts "Height: #{rectangle1.height}"
puts "Area: #{rectangle1.area}"
puts "Perimeter: #{rectangle1.perimeter}"

puts "\nRectangle2"
puts "Width: #{rectangle2.width}"
puts "Height: #{rectangle2.height}"
puts "Area: #{rectangle2.area}"
puts "Perimeter: #{rectangle2.perimeter}"