#Write a class Email with attributes sender, receiver, and content. 
#Implement a method to check if the content contains any offensive words.

class Email
	attr_reader :sender, :receiver, :content
	def initialize(sender,receiver,content)
		@sender = sender
		@receiver = receiver
		@content = content
	end

	def check(offensive_word)
		words = @content.scan(/\w+/)
		i = 0
		while i < words.length
			if words[i] == offensive_word
				puts "This email contains offensive words"
				return
			end
			i += 1
		end
		puts "This email does not contain offensive words"
	end
end

content1 = "hi, bye yo wassup, hi hi hi yo, bye huh wassup yo"
content2 = "A A A B B B B C C D"
email1 = Email.new("Dennis","Chris",content1)
email2 = Email.new("Chris","Dennis",content2)

email1.check("bye")
email2.check("bye")