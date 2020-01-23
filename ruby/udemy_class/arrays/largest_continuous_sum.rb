# If the array is positive, then the solution is
# just the sum of all the numbers

# We start adding each number and store in a current_sum variable
# As long as the current_sum is positive, we keep adding
# When current_sum become negative, we start with new current_sum
# A negative sum will only decrease the sum of a future sequence

def largest_continuous_sum(array)
  maximum_sum = 0
  current_sum = 0

  array.each do |el|
    current_sum += el

    if current_sum > maximum_sum
      maximum_sum = current_sum
    end

    if current_sum < 0
      current_sum = 0
    end
  end

  maximum_sum
end

def largest_continuous_array(array)
  current_start = 0
  current_end = 0
  maximum_start = 0
  maximum_end = 0
  current_sum = 0
  maximum_sum = 0

  array.each_with_index do |el, i|
    current_sum += el
    current_end += 1

    if current_sum > maximum_sum
      maximum_start = current_start
      maximum_end = current_end
      maximum_sum = current_sum
    end

    if current_sum < 0
      current_start = 0
      current_start = current_end
      current_sum = 0
    end
  end

  return array[maximum_start...maximum_end]
end

array = [1,2,-1,3,4,10,10,-10,-1]

print largest_continuous_sum(array)
print largest_continuous_array(array)
