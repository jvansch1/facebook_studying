class Node

  attr_reader :value
  attr_accessor :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList

  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def print_list
    current_node = @head

    while current_node != nil
      print "#{current_node.value} => "
      current_node = current_node.next_node
    end
  end

  def append_node(next_node)
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node.next_node = next_node
  end

  def prepend_node(node)
    original_head = @head

    node.next_node = original_head

    @head = node
  end

  def find_middle
    lead_pointer  = @head.next_node
    trailing_pointer = @head

    while lead_pointer && lead_pointer.next_node
      lead_pointer = lead_pointer.next_node.next_node
      trailing_pointer = trailing_pointer.next_node
    end

    return trailing_pointer.value
  end

  def delete_middle_node
    lead_pointer  = @head.next_node
    trailing_pointer = @head
    pre_trailing_pointer = @head

    while lead_pointer && lead_pointer.next_node
      pre_trailing_pointer = pre_trailing_pointer.next_node unless pre_trailing_pointer == trailing_pointer
      lead_pointer = lead_pointer.next_node.next_node
      trailing_pointer = trailing_pointer.next_node
    end

    pre_trailing_pointer.next_node = trailing_pointer.next_node
  end

  def remove_duplicates
    current_node = @head

    while current_node != nil && current_node.next_node != nil
      if current_node.value == current_node.next_node.value
        current_node.next_node = current_node.next_node.next_node
      end

      current_node = current_node.next_node
    end


  end

  def reverse_list
    current_node = @head
    next_node = @head.next_node

    while current_node != nil && next_node != nil
      current_node.next_node
    end
  end
end

head_node = Node.new(1)

list = LinkedList.new(head_node)
list.append_node(Node.new(2))
list.append_node(Node.new(3))
list.append_node(Node.new(4))
list.append_node(Node.new(5))
list.append_node(Node.new(6))
list.append_node(Node.new(100))

p list.print_list
p list.find_middle
list.delete_middle_node
p list.print_list

duplicate_list = LinkedList.new(Node.new(1))
duplicate_list.append_node(Node.new(1))
duplicate_list.append_node(Node.new(1))
duplicate_list.append_node(Node.new(1))
# duplicate_list.append_node(Node.new(3))
# duplicate_list.append_node(Node.new(3))
# duplicate_list.remove_duplicates
duplicate_list.print_list
