#Build a Product class with attributes name, price, and quantity. 
#Add methods to calculate the total price for a given quantity of products.

class Product
	attr_reader :name, :price, :total_price
	def initialize(name,price)
		@name = name
		@price = price
	end

	def total_price(quantity)
		@total_price = quantity * @price
		puts "Total price for #{quantity} #{name}(s) is RM#{sprintf('%.2f',@total_price)}"
	end
end

product1 = Product.new("Waffle",3.9)
product2 = Product.new("Egg Tart",2.6)
product3 = Product.new("Nasi Lemak",8.8)

product1.total_price(6)
product2.total_price(8)
product3.total_price(2)
