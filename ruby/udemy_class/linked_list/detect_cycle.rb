class Node

  attr_accessor :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end


# Return true if it contains a cycle
def detect_cycle_with_hash(head)
  seen_nodes = {}

  current_node = head

  while current_node != nil
    if seen_nodes[current_node.object_id]
      return true
    end

    seen_nodes[current_node.object_id] = true
    current_node = current_node.next_node
  end

  return false
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)

a.next_node = b
b.next_node = c

puts(detect_cycle_with_hash(a))

c.next_node = a
puts(detect_cycle_with_hash(a))

def detect_cycle_two_pointer(head)
  current_node = head
  pointer = current_node

  while pointer && pointer.next_node
    current_node = current_node.next_node
    pointer = pointer.next_node.next_node

    if current_node == pointer
      return true
    end
  end

  return false
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)

a.next_node = b
b.next_node = c

puts(detect_cycle_two_pointer(a))

c.next_node = a
puts(detect_cycle_two_pointer(a))
