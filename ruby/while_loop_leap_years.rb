<<-xx
https://pine.fm/LearnToProgram/chap_06.html
Leap Years. Write a program which will ask for a starting year and an ending year,
and then puts all of the leap years between them (and including them, if they are 
also leap years). Leap years are years divisible by four (like 1984 and 2004). 
However, years divisible by 100 are not leap years (such as 1800 and 1900) 
unless they are divisible by 400 (like 1600 and 2000, which were in fact leap 
years). (Yes, it's all pretty confusing, but not as confusing as having July in 
the middle of the winter, which is what would eventually happen.)
xx
puts "Starting year?"
start_yr = gets.chomp.to_i
puts "Ending year?"
end_yr = gets.chomp.to_i

	
(start_yr..end_yr).each do |x|
	if x % 4 == 0
		year_div_four = true
	end
	if x % 100 == 0
		year_div_one_hundred = true
	end
	if x % 400 == 0 
		year_div_four_hundred = true
	end

	if year_div_one_hundred and year_div_four_hundred 
		print " #{x}/400 " 
		year_div_four = false
	end		

	if year_div_four
		print " #{x} "
	end	

end 