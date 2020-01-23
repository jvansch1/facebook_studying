require 'byebug'

class TreeNode

  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

class Tree

  attr_reader :root

  def initialize(root)
    @root = root
  end

  def print_in_order(root_node = @root)
    if root_node == nil
      return nil
    end

    print_in_order(root_node.left)
    print "#{root_node.value}" + " "
    print_in_order(root_node.right)
  end

  def add_node(root_node = @root, new_node)
    if new_node.value < root_node.value
      if root_node.left == nil
        root_node.left = new_node
      else
        add_node(root_node.left, new_node)
      end
    else
      if root_node.right == nil
        root_node.right = new_node
      else
        add_node(root_node.right, new_node)
      end
    end
  end

  def search(value, current_node = @root)
    if current_node == nil
      return false
    end

    if current_node.value == value
      return true
    end

    search(value, current_node.left) || search(value, current_node.right)
  end

  def delete(value, current_node = @root)
    if current_node == nil
      return current_node
    end

    if value < current_node.value
      current_node.left = delete(value, current_node.left)
    elsif value > current_node.value
      current_node.right = delete(value, current_node.right)
    else
      # case 1: current_node has no children
      if current_node.left == nil && current_node.right == nil
        return nil
      # Node has either a left child or right child but not both
      elsif current_node.left.nil? ^ current_node.right.nil?
        return [current_node.left, current_node.right].compact.first
      # node has both children
      else
        # find in-order successor(smallest in right subtree)
        in_order_succesor = minimum_of_subtree(current_node.right)
        current_node.value = in_order_succesor.value
        current_node.right = delete(in_order_succesor.value, current_node.right)
        return current_node
      end
    end
  end


  # successor node: Node in right subtree with minimum value
  def minimum_of_subtree(current_node)
    if current_node.left == nil
      return current_node
    else
      return minimum_of_subtree(current_node.left)
    end
  end
end

root_node = TreeNode.new(10)
tree = Tree.new(root_node)
# tree.print_in_order
tree.add_node(TreeNode.new(5))
tree.add_node(TreeNode.new(15))
tree.add_node(TreeNode.new(8))
tree.add_node(TreeNode.new(3))
# tree.print_in_order
tree.delete(5)
print "\n"
debugger
tree.print_in_order

# p tree.search(8)
