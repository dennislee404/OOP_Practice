#Create a Ruby class called Person with attributes name and age.
#Implement a constructor for the Person class that sets the name and age. 
#Include a method to compare ages of two people.

class Person
	attr_reader :name, :age
	def initialize(name,age)
		@name = name
		@age = age
	end

	def compare(person2)
		age_gap = (age - person2.age).abs
		if age > person2.age
			puts "#{name} is older than #{person2.name} by #{age_gap} years old"
		elsif age < person2.age
			puts "#{person2.name} is older than #{name} by #{age_gap} years old"
		else 
			puts "#{name} and #{person2.name} are the same age"
		end
	end
end

person1 = Person.new("Dennis",26)
person2 = Person.new("Danny",42)
person3 = Person.new("Roger",42)
person4 = Person.new("Karen",71)

puts "#{person1.name} is #{person1.age} years old"
puts "#{person2.name} is #{person2.age} years old"
puts "#{person3.name} is #{person3.age} years old"
puts "#{person4.name} is #{person4.age} years old"

person1.compare(person2)
person2.compare(person3)
person3.compare(person4)
person4.compare(person1)