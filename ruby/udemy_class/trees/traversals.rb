class BinaryTree

  attr_accessor :root, :left, :right

  def initialize(root, left = nil, right = nil)
    @root = root
    @left = left
    @right = right
  end

  def insert_left(root)
    new_tree = BinaryTree.new(root)
    if @left.nil?
      @left = new_tree
    else
      new_tree.left = @left
      @left = new_tree
    end
  end

  def insert_right(root)
    new_tree = BinaryTree.new(root)
    if @right.nil?
      @right = new_tree
    else
      new_tree.right = @right
      @right = new_tree
    end
  end
end

root = BinaryTree.new('A')
root.insert_left('B')
root.insert_right('C')

def preorder_traversal(root)
  if root
    puts(root.root)
    preorder_traversal(root.left)
    preorder_traversal(root.right)
  end
end

def inorder_traversal(root)
  if root
    preorder_traversal(root.left)
    puts(root.root)
    preorder_traversal(root.right)
  end
end

def postorder_traversal(root)
  if root
    preorder_traversal(root.left)
    preorder_traversal(root.right)
    puts(root.root)
  end
end

puts "Preorder Traversal: \n"
preorder_traversal(root)
puts "Inorder Traversal: \n"
inorder_traversal(root)
puts "Postorder Traversal: \n"
postorder_traversal(root)
