require 'byebug'

def insertion_sort(array)
  i = 0

  while i < array.length
    p "Before sorting step: #{array}"
    # i here represents the element we are trying to insert
    j = i
    p "i-index: #{i}"
    el_to_insert = array[j]

    while j > 0 && array[j - 1] > array[j]
      p "j-index: #{j}"
      array[j], array[j - 1] = array[j - 1], array[j]
      j -= 1
    end

    array[j] = el_to_insert
    p "After sorting step: #{array}"
    i += 1

  end
  return array
end

array = [8,7,6,5,4,3,2,1]

p insertion_sort(array)
