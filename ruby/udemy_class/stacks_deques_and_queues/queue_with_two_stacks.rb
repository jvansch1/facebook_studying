class TwoStackQueue

  def initialize
    @store = []
    @temp = []
  end

  def enqueue(value)
    @store.append(value)
  end

  def dequeue
    # Move all elements from the first stack into the second

    while !@store.empty?
      @temp << @store.pop
    end

    # Remove top element from temp
    @temp.pop

    while !@temp.empty?
      @store << @temp.pop
    end
  end

  def inspect
    print @store
  end
end

queue = TwoStackQueue.new
queue.enqueue(1)
queue.enqueue(2)
queue.inspect
queue.dequeue
queue.inspect
