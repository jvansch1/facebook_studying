# We can represent the heap as a single array
# with index 0 being the root
# To find the children of any particular node
# in the heap we can use the following equations
# 2(index) for left node
# 2(index) + 1 for right node
# When we are looking for the children of the root use:
# 2(index) + 1 for left_node
# 2(index) + 2 for right_node


class MinHeap
  attr_reader :heap

  def initialize(heap = [])
    @heap = heap
  end

  def left_child(i)
    # works for zero indexing
    # when i = 0
    #    (2 * 0) + 1 = 1
    # when i = 1
    #    (2 * 1) + 1 = 3
    (2 * i) + 1
  end

  def right_child(i)
    # works for zero indexing
    # when i = 0
    #    2 * (0 + 1) = 2
    # when i = 1
    #    2 * (1 + 1) = 4
    2 * (i + 1)
  end

  def print_heap
    puts @heap[0]
    index = 1
    current_level_position = 0
    current_level_width = 2

    while index < @heap.length
      while current_level_position < current_level_width
        print "#{@heap[index]} "
        current_level_position += 1
        index += 1
      end
      print "\n"
      current_level_width *= 2
      current_level_position = 0
    end
  end

  # Insert and perc_up are used for insertion

  def insert(value)
    @heap << value
    perc_up(@heap.length - 1)
  end

  def perc_up(i)
    # We want to continue this loop until we hit
    # 0(we cannot find a parent for this index)
    while i / 2 > 0
      # Compare current element with parent
      if @heap[i] < @heap[i / 2]
        # if we find the the current element violates the heap propoerty
        # we swap
        temp = @heap[i / 2]
        @heap[i / 2] = @heap[i]
        @heap[i] = temp
      end

      # Move to parent
      i = i / 2
    end
  end

  # MinChild and Perc_down for moving node down tree

  # def min_child(i)
  #   if (i * 2) + 1 > @heap.length
  #     return i * 2
  #   else
  #     if @heap[i * 2] >
  #   end
  # end

end

heap = MinHeap.new
heap.insert(1)
print heap.heap
heap.insert(2)
print heap.heap
heap.insert(3)
print heap.heap
heap.insert(4)
print heap.heap
heap.insert(5)
print heap.heap
heap.insert(6)
print heap.heap
heap.insert(7)
print heap.heap

print "\n"
heap.print_heap
