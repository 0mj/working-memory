hrs_in_yr = 365 * 24
minutes_in_yr = hrs_in_yr * 60
minutes_in_a_decade = minutes_in_yr * 10
puts hrs_in_yr
puts minutes_in_yr
p minutes_in_a_decade

# If I am 1406 million seconds old, how old am I? 
hrs_old = 1406000000 / 60 # hrs old 
days_old = hrs_old / 24 
years_old = days_old / 365

p hrs_old; p days_old; p years_old