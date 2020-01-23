class Stack

  attr_reader :max_element

  def initialize
    @store = []
    @maximum_stack = []
  end

  def max_element
    return nil if @maximum_stack.empty?
    return @maximum_stack[-1]
  end

  def push(val)
    if @maximum_stack.empty? || val > @maximum_stack[-1]
      @maximum_stack << val
    else
      @maximum_stack << @maximum_stack[-1]
    end

    @store << val
  end

  def pop
    @store.pop
    @maximum_stack.pop
  end

  def print
    index = @store.length - 1

    while index >= 0
      puts @store[index]
      index -= 1
    end

    puts "------------"
  end
end

stack = Stack.new
stack.push(10)
stack.push(30)
stack.push(20)
stack.push(5)
stack.push(100)
stack.print
print "Max Element: #{stack.max_element}\n"
stack.pop
stack.print
print "Max Element: #{stack.max_element}\n"
