#Write a class Email with attributes sender, receiver, and content. 
#Implement a method to check if the content contains any offensive words.

class Email
	attr_reader :sender, :receiver, :content
	def initialize(sender,receiver,content)
		@sender = sender
		@receiver = receiver
		@content = content
	end

	def check
		offensive_words = ["offensive","chicken","content"]
		words = @content.scan(/\w+/)
		i = 0
		while i < words.length
			u = 0
			while u < offensive_words.length
				if words[i] == offensive_words[u]
					puts "This email contains offensive words"
					return
				end
				u += 1
			end
			i += 1
		end
		puts "This email does not contain offensive words"
	end
end

content1 = "Write a class Email with attributes sender, receiver, and content."
content2 = "Implement a method to check if the content contains any offensive words"
email1 = Email.new("Dennis","Chris",content1)
email2 = Email.new("Chris","Dennis",content2)

email1.check
email2.check