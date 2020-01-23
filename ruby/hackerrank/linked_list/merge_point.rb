class LinkedList
  def initialize(head)
    @head = head
  end
end

class Node

  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def find_merge_node(list1, list2)
  # Go through first list and keep track of all nodes
  list_one_nodes = {}

  current_node = list1

  while !current_node.nil?
    list_one_nodes[current_node] = true
    current_node = current_node.next_node
  end

  # Now go through the second list and check to see
  # if we have already seen any of these nodes

  current_node = list2

  while !current_node.nil?
    if list_one_nodes[current_node]
      return current_node.value
    end

    current_node = current_node.next_node
  end
end

head_one = Node.new(1)
head_two = Node.new(1)

merge_point = Node.new(2)

head_one.next_node = merge_point
head_two.next_node = merge_point

p find_merge_node(head_one, head_two)

head_one = Node.new(1)
head_one.next_node = Node.new(2)

head_two = Node.new(1)

merge_point = Node.new(3)

head_one.next_node.next_node = merge_point
head_two.next_node = merge_point

p find_merge_node(head_one, head_two)
