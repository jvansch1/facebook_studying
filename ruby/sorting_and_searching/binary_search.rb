require 'byebug'

array = [1,2,3,4,5,6,7,8]

def recursive_binary_search(array, target)
  midpoint = array.length / 2
  middle_value = array[midpoint]

  if middle_value < target
    #search right
    return recursive_binary_search(array[midpoint + 1..-1], target) + midpoint + 1
  elsif middle_value > target
    #search left
    return recursive_binary_search(array[0..midpoint - 1], target)
  else
    return midpoint
  end
end

array.each do |el|
  p recursive_binary_search(array, el)
end

def iterative_binary_search(array, target)
  min_index = 0
  max_index = array.length - 1

  while max_index >= min_index
    midpoint = (min_index + max_index) / 2
    mid_value = array[midpoint]

    if mid_value < target
      min_index = midpoint + 1
    elsif mid_value > target
      max_index = midpoint - 1
    else
      return midpoint
    end
  end
end

array.each do |el|
  p iterative_binary_search(array, el)
end
