class Queue
  def initialize(store = [])
    @store = store
  end

  def enqueue(value)
    @store.unshift(value)
  end

  def dequeue
    @store.pop
  end

  def size
    @store.length
  end

  def is_empty
    size == 0
  end

  def inspect
    @store
  end
end

q = Queue.new
q.enqueue(1)
q.enqueue(2)
print q.inspect
q.dequeue
print q.inspect
