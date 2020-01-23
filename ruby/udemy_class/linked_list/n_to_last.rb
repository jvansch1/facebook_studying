class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

def n_to_last_naive(head, n)
  # We go through and find the total length

  current_node = head
  length = 0

  while current_node
    length += 1
    current_node = current_node.next_node
  end

  # When we know the length, we know what node we have to stop at

  target = length - n
  i = 0
  current_node = head

  # iterate through until i == target value

  while i < target
    current_node = current_node.next_node
    i += 1
  end

  return current_node.value
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)
e = Node.new(5)

a.next_node = b
b.next_node = c
c.next_node = d
# d.next_node = e

print(n_to_last_naive(a, 2))

def n_to_last_optimal(head, n)
  current_node = head
  lead_pointer = head

  i = 1

  while i < n
    lead_pointer = lead_pointer.next_node
    i += 1
  end

  while lead_pointer.next_node
    current_node = current_node.next_node
    lead_pointer = lead_pointer.next_node
  end

  return current_node.value
end

print(n_to_last_optimal(a, 2))
