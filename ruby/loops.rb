5.times { |i| print "#{i} " }

(6..15).each { |n| print "#{n} " }

puts

i = 16
while i < 20
  print "#{i} "
  i += 1
end

puts

until i == 50
  print "#{i} "
  i += 1
end

puts

loop do
  print "#{i} "
  i += 1
  break if i == 60
end
