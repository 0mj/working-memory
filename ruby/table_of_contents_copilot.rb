contents = [
	
  { chapter: 'Chapter 1', title: 'Numbers', page: 'page 1' },
  { chapter: 'Chapter 2', title: 'Letters', page: 'page 72' },
  { chapter: 'Chapter 3', title: 'Variables', page: 'page 118' }
]

puts 'Table of Contents'.center(50)
puts
contents.each do |entry|
  line = "#{entry[:chapter]}: #{entry[:title]}".ljust(30) + entry[:page].rjust(20)
  puts line
end
