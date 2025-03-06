<<-xx
https://pine.fm/LearnToProgram/chap_07.html
write a program which asks us to type in as many words as we want 
(one word per line, continuing until we just press Enter on an empty
 line), and which then repeats the words back to us in alphabetical order. OK?
xx

words = [] 

enter = false

while enter == false
	
	if enter == true
		break
	end
	
	puts "Word please."
	word = gets.chomp
	
	if word == ""
		enter = true
	else
		words.push(word)
	end

end

puts words.sort
