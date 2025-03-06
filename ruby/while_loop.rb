<<-xx
"99 bottles of beer on the wall..." 
Write a program which prints out the 
lyrics to that beloved classic, that 
field-trip favorite: "99 Bottles of 
Beer on the Wall."
xx

bottles = 99

while bottles > 0 
	puts "#{bottles} bottles of beer on the wall..."
	sleep 1	
	puts "#{bottles} bottles of beer..."
	puts "Take one down pass it around.. " 
	bottles = bottles - 1
	puts ".....   #{bottles} bottles of beer on the wall..."
end
puts "WALL HAS ZERO BEERS ON IT! TIME FOR BEER RUN!"