class BinaryTree

  attr_accessor :left, :right, :root

  def initialize(root)
    @root = root
    @left = nil
    @right = nil
  end

  def insert_left(node)
    if @left.nil?
      @left = BinaryTree.new(node)
    else
      # This adds a tree in between the current root
      # and the child as opposed to the end
      new_tree = BinaryTree.new(node)
      new_tree.left = @left
      @left = new_tree
    end
  end

  def insert_right(node)
    if @right.nil?
      @right = BinaryTree.new(node)
    else
      new_tree = BinaryTree.new(node)
      new_tree.right = @right
      @right = new_tree
    end
  end
end
