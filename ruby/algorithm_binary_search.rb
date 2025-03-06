def binary_search(array, target)
  low, high = 0, array.length - 1
  while low <= high
    mid = (low + high) / 2
    return mid if array[mid] == target
    array[mid] < target ? low = mid + 1 : high = mid - 1
  end
  nil
end

arr = [1, 3, 5, 7, 9, 11]
puts binary_search(arr, 7)
