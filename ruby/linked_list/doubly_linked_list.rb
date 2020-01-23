class Node

  attr_accessor :value, :next_node, :prev_node

  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

def print_linked_list(list)
  current_node = list

  while current_node
    print "#{current_node.value} -> "
    current_node = current_node.next_node
  end
end

def reverse_linked_list(list)
  current_node = list
  previous_node = nil

  while current_node
    next_node = current_node.next_node
    current_node.next_node = previous_node
    current_node.prev_node = next_node
    previous_node = current_node
    current_node = next_node
  end
end

head = Node.new(1)
node_two = Node.new(2)
head.next_node = node_two
node_two.prev_node = head
node_three = Node.new(3)
node_two.next_node = node_three
node_three.prev_node = node_two

print_linked_list(head)
reverse_linked_list(head)
print "\n"
print_linked_list(node_three)
