def quick_sort(array)
  if array.length <= 1
    return array
  end

  partition = array[0]

  less_than = array[1..-1].select { |el| el < partition }
  greater_than = array[1..-1].select { |el| el >= partition }

  return quick_sort(less_than) + [partition] + quick_sort(greater_than)
end

array = [8,7,6,5,4,3,2,1,4]
p quick_sort(array)
