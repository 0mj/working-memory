<<-xx
If you want to get different numbers again 
(like what happens if you never use srand), 

then just call srand 0. This seeds it with a 
really weird number, using (among other things)
 the current time on your computer, down to the millisecond.
xx

puts "give me a random number"
rn = gets.chomp.to_i
puts
srand rn
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand rn
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))