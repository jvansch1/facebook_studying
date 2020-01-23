array = [4,3,2,1]
array_2 = [100, 4, 3, 20, 9, 101, 567, 2, 4, 4, 8]

def bubble_sort(array)
  sorted = false
  arr_copy = array.clone

  while !sorted
    sorted = true
    (0..arr_copy.length - 2).each do |index|
      if arr_copy[index] > arr_copy[index + 1]
        sorted = false
        arr_copy[index], arr_copy[index + 1] = arr_copy[index + 1], arr_copy[index]
      end
    end
  end

  return arr_copy
end

p bubble_sort(array)
p bubble_sort(array_2)
