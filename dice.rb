#Build a class Dice with a method to roll the dice and simulate a random number from 1 to 6.

class Dice
	attr_reader :n_sides, :outcome
	def initialize(n_sides)
		@n_sides = n_sides
	end

	def roll
		@outcome = rand(1..n_sides)
		puts "Outcome is #{@outcome}"
	end
end

dice1 = Dice.new(6)
dice2 = Dice.new(12)

i = 0
while i < 10
	dice1.roll
	i += 1
end

puts ""

i = 0
while i < 10
	dice2.roll
	i += 1
end