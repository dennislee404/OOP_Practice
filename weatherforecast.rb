#Build a class WeatherForecast that generates a random weather forecast for the day.

class WeatherForecast
	attr_reader :weather, :forecast
	def initialize()
		@weather = ["Sunny","Rainy","Cloudy","Windy"]
		@forecast = @weather[rand(0..@weather.length-1)]
		puts "Weather is #{@forecast} today"
	end
end

i = 0
while i < 10
	WeatherForecast.new
	i += 1
end

