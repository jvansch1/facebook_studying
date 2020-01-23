arr = [1,3,2,2]
sum = 4

# This will do a doubly nested loop
# and compare i and j at each step. If
# the sum is equal to what we are looking for keep track

def pair_sum_naive(array, sum)
  pairs = []

  i = 0

  while i < array.length
    j = i + 1
    while j < array.length
      print "#{array[i]}, #{array[j]}\n"
      if array[i] + array[j] == sum
        pairs << [array[i], array[j]]
      end
      j += 1
    end

    i += 1
  end
  pairs
end

def pair_sum_optimal(array, sum)
  differences = {}

  array.each do |el|
    # we want to record the difference between
    # the current element and the sum
    differences[el] = sum - el
  end

  pairs = []

  array.each do |el|
    needed_compliment = sum - el

    if differences[needed_compliment]
      pair = [el,needed_compliment]
      pairs << [pair.min, pair.max]
    end
  end

  pairs.uniq
end

p pair_sum_naive(arr, sum)

p pair_sum_optimal(arr, sum)
