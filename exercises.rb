#15. Write a Ruby program that takes a sentence as input and outputs the number of words in it.

def word_counter(sentence)
	words = sentence.scan(/\w+/)
	puts "This sentence has #{words.length} word(s)"
end

sentence1 = "Write a Ruby program that takes a sentence as input and outputs the number of words in it."
sentence2 = "Create an array of strings representing words. Write code to join the words in the array into a single sentence."
word_counter(sentence1)
word_counter(sentence2)

#16. Given a hash student_scores with student names as keys and their corresponding test scores as values, write code to find the student with the highest score.

student_scores = {
	"Dennis" => 88,
	"Jason" => 94,
	"Chris" => 94,
	"Banjamin" => 89
}

# def highest_score(student_scores)
# 	highest_score = 0
# 	highest_scorer = nil
# 	student_scores.each do |key, value|
# 		if value > highest_score
# 			highest_score = value
# 			highest_scorer = key
# 		end
# 	end
# 	puts "#{highest_scorer} : #{highest_score}"
# end

def highest_score(student_scores)
	highest_score = student_scores.values.max
	highest_scorers = Hash[student_scores.select {|key,value| value == highest_score}]
	puts highest_scorers
	puts highest_score
end

highest_score(student_scores)

#17. Given a hash fruit_prices with fruit names as keys and their prices as values, write code to print the names of fruits that are priced less than $1.'

fruit_prices = {
	"Mango" => 6.88,
	"Lemon" => 0.99,
	"Watermelon" => 23.99,
	"Durian" => 50,
}

def less_than(fruit_prices,price)
	new_hash = Hash[fruit_prices.select {|key,value| value < price}]
	puts new_hash
end

less_than(fruit_prices,1)

#18. Create an array of strings representing names. Write code to filter and print the names that start with the letter "A".

names = ["Olivia","Noah","Ava","Emma","Liam","Asher"]

a_names = names.select {|name| name.start_with?('A')}
puts a_names

#19. Create an array of strings representing words. Write code to join the words in the array into a single sentence.

words = ["Create","an","array","of","strings","representing","words"]
sentence = words.join(" ")
puts sentence
