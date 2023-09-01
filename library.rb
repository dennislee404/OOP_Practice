#Build a class Library that holds a collection of books. 
#Implement methods to add, remove, and list books.

class Library
	attr_reader :books
	def initialize()
		@books = []
	end

	def add_book(book_name)
		@books << book_name
	end

	def remove_book(book_name)
		@books.delete(book_name)
	end
end

library = Library.new

i = 0
while i < 10
	library.add_book("Book #{i+1}")
	i += 1
end
puts library.books

library.remove_book("Book 2")
puts library.books
library.remove_book("Book 8")
puts library.books
library.remove_book("Book 5")
puts library.books

