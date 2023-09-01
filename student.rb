#Create a class Student with attributes name and grades as an array. 
#Implement a method in the Student class to calculate the average grade.

class Student
	attr_reader :name, :grades, :average
	def initialize(name)
		@name = name
		@grades = [83,89,67,90,78]
	end

	def average
		sum = 0.0
		i = 0
		while i < @grades.length
			sum += @grades[i]
			i += 1
		end
		puts sum
		puts @grades.length
		@average = sum / @grades.length
		puts "Average grade over #{@grades.length} subject(s) is #{@average	}"
	end
end

student1 = Student.new("Dennis")
puts student1.name
puts student1.grades
puts student1.average

