class Stack
  def initialize(store = [])
    # Allow us to start a stack that is not empty
    @store = store
  end

  def push(value)
    @store << value
  end

  def pop
    @store.pop
  end

  def peek
    @store[-1]
  end

  def size
    @store.length
  end

  def is_empty?
    @store.empty?
  end
end

stack = Stack.new
puts stack.is_empty?
stack.push(1)
puts stack.peek
stack.push(2)
puts stack.peek
stack.pop
puts stack.peek
puts stack.is_empty?
