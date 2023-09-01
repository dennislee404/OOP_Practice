#Create a class Time with attributes hours and minutes. 
#Add a method to add two Time objects together.

class Time
	attr_reader :hours, :minutes
	def initialize(hours,minutes)
		@hours = hours
		@minutes = minutes
		puts "The time is now #{hours}.#{minutes}"
	end

	def add(time2)
		total_minutes = @minutes + time2.minutes
		total_hours = @hours + time2.hours
		if total_minutes >= 60
			total_minutes -= 60
			total_hours += 1
		end
		puts "Total time = #{total_hours}.#{total_minutes}"
	end
end

time1 = Time.new(6,45)
time2 = Time.new(3,33)
newtime = time1.add(time2)
puts newtime
