# push user responses into array

@response = [ 'It is certain.', 'It is decidedly so.', 'Without a doubt.', 'You should count on it.', 'Absolutely, definitively, yes.' ]

def menu
	puts "Type a question to get an answer, or type quit to end the program."
	ask
end

def ask
	user_input = gets.strip.downcase
	if user_input == 'quit'
		puts "Thanks for asking the Magic Eight Ball. Please play again!"
		exit(0)
	end
	question(user_input)
end

def question(user_input)
	if user_input.include? "?"
		puts "The Magic Eight Ball says:"
		puts @response.sample
	elsif user_input == "add answers"
		puts "What answer would you like to add?"
		user_response = gets.strip
		@response << user_response
		puts "#{user_response} was successfully added, thanks."
	elsif user_input == "print answers"
		puts "All responses are: #{@response}"
	else
		puts "I'm sorry, please ask me a question, or type quit to end the program."
		ask
	end
end

while true
	menu
end
