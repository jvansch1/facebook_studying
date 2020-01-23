require 'byebug'

array = [8,7,6,5,4,3,2,1]

def sort(array)
  return array if array.length <= 1
  
  midpoint = array.length / 2
  return merge(sort(array[0..midpoint - 1]), sort(array[midpoint..-1]))
end

def merge(left, right)
  merged = []

  while left.length > 0 && right.length > 0
    if left[0] < right[0]
      merged.push(left.shift)
    else
      merged.push(right.shift)
    end
  end

  return merged.concat(left).concat(right)
end

p sort(array)
