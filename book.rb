# Create a class Book with attributes title, author, and pages. Add a method to display the book's information.

class Book
	attr_reader :title, :author, :pages
	def initialize(title,author,pages)
		@title = title
		@author = author
		@pages = pages
	end

	def info
		puts "\nTitle: #{@title}"
		puts "Author: #{@author}"
		puts "Pages: #{@pages}"
		puts "#{@title} is written by #{@author}. It has #{@pages} pages."
	end
end

book1 = Book.new("Ruby101","Dennis",257)
book2 = Book.new("Ruby102","Theo",366)

book1.info
book2.info