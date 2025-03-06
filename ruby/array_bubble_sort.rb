# To sort words in an array using Ruby without using the built-in .sort()
# method, you can implement the bubble sort algorithm

def bubble_sort(array) 
  n = array.length
  loop do
    swapped = false
    
    (n-1).times do |i|
      if array[i] > array[i+1]        
        # binding.irb
        # array[i], array[i+1] = array[i+1], array[i]  
        array[i] = array[i+1]
        array[i+1] = array[i]                
        swapped = true
      end
    end
    break unless swapped
  end
  array
end


# words = ["apple", "zebra", "banana", "orange"]
# words = [ "zebra", "apple", "banana", "orange"]
words = [ "zebra", "orange", "banana", "apple"]
sorted_words = bubble_sort(words)
print sorted_words