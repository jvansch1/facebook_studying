arr1 = [1,2,3,4,5,6,7]
arr2 = [3,7,2,1,4,6]

# Find the element from the first array that is missing in the second array

def missing_element(arr1, arr2)
  arr2_characters = {}

  arr2.each do |el|
    arr2_characters[el] = true
  end

  arr1.each do |el|
    return el unless arr2_characters[el]
  end
end

def missing_element_with_sum(arr1, arr2)
  arr1.sum - arr2.sum
end

p missing_element(arr1, arr2)
p missing_element_with_sum(arr1, arr2)
