class Deque:
    def __init__(self, store=[]):
        self.store = store

    def add_front(self, value):
        self.store.insert(0, value)

    def add_rear(self, value):
        self.store.append(value)

    def remove_front(self):
        del self.store[0]

    def remove_rear(self):
        self.store.pop()

    def size(self):
        return len(self.store)

    def is_empty(self):
        return self.size() == 0

    def inspect(self):
        return self.store

dq = Deque()
dq.add_front(1)
print(dq.inspect())
dq.add_front(2)
print(dq.inspect())
dq.add_rear(100)
print(dq.inspect())
dq.remove_front()
print(dq.inspect())
dq.remove_rear()
print(dq.inspect())
