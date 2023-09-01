#Implement a class Employee with attributes name, position, and salary. 
#Add a method to give a raise to the employee's salary.

class Employee
	attr_reader :name, :position, :salary
	def initialize(name,position,salary)
		@name = name
		@position = position
		@salary = salary
	end

	def raise(amount)
		@salary += amount
	end
end

employee1 = Employee.new("Dennis","Supervisor",2500)
puts employee1.name
puts employee1.position
puts employee1.salary
employee1.raise(500)
puts employee1.salary