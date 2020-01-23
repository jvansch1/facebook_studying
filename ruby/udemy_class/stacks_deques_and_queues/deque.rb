class Deque
  def initialize(store = [])
    @store = []
  end

  def add_front(value)
    @store.unshift(value)
  end

  def add_rear(value)
    @store << value
  end

  def remove_front
    @store.shift
  end

  def remove_rear
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

dq = Deque.new
dq.add_front(1)
p dq.inspect
dq.add_rear(2)
p dq.inspect
dq.add_front(-11)
p dq.inspect
dq.remove_front
p dq.inspect
dq.remove_rear
p dq.inspect
