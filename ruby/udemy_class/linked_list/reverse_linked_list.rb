require 'byebug'

class Node

  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def print_list(head)
  current_node = head

  while current_node
    print "#{current_node.value} -> "
    current_node = current_node.next_node
  end

  print "\n"
end

def reverse_list(head)
  # We want to keep track of current and prev and update
  # at every step. If we reverse all the nodes to have
  # next_node point to prev, the list is reversed
  current_node = head
  prev_node = nil

  while current_node
    # We need to grab the next node first, or
    # we will lose refernce to it when we reassign
    # current_node.next_node
    next_node = current_node.next_node
    # Set the current_node = to prev_node.
    # THis is step that reverses the list
    current_node.next_node = prev_node
    # Our previous node for the next step is the current_node
    # in this step
    prev_node = current_node
    # The new current_node was the original next node before
    # the reassignment
    current_node = next_node
  end

  return prev_node
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)

a.next_node = b
b.next_node = c

print_list(a)

new_list = reverse_list(a)

print_list(new_list)
