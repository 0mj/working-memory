<<-IDENTIFIER
	Hmmm it looks like when I typed in the letters 
	C, h, r, i, s, and then pressed Enter, gets got all of 
	the letters in my name and the Enter! Fortunately, 
	there's a method just for this sort of thing: chomp. 
	It takes off any Enters hanging out at the end of 
	your string. Let's try that program again, but with 
	chomp to help us this time:
IDENTIFIER



puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'